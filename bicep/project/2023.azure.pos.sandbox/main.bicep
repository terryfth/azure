param location string = resourceGroup().location
param vmCount int = 4

param tagValues object = {
  environment: 'poc'
  project: 'enactor pos'
  createdby: 'terry.fung_ext@chanel.com'
}

// module deployed to resource group in the same subscription
module aksStuff 'MC_poc-rg-enactorpos-01_poc-aks-cluster-01_eastasia.bicep' = {
  name: 'aksstuff'
  scope: resourceGroup('MC_poc-rg-enactorpos-01_poc-aks-cluster-01_eastasia')
}

resource pipbastionhost 'Microsoft.Network/publicIPAddresses@2023-02-01' = {
  name: 'poc-pip-enactorpos-01'
  location: location
  tags: tagValues
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }  
  properties: {
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'  
  }
}


resource bastonhost 'Microsoft.Network/bastionHosts@2023-02-01' = {
  name: 'poc-bth-enactorpos-01'
  location: location
  tags: tagValues
  sku: {
    name: 'Basic'
  }
  properties: {
    ipConfigurations: [
      {
        name: 'IpConf'
        properties: {
          publicIPAddress: {
            id: pipbastionhost.id
          }
          subnet: {
            id: aksStuff.outputs.azurebastionsubnetId
          }
        }
      }
    ]
  }
}



resource vm 'Microsoft.Compute/virtualMachines@2022-11-01' = [for i in range(1, vmCount): {
  name: 'poc-vm-enactor-dockerswarm-${i}'
  location: location
  tags: tagValues  
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D2as_v5'
    }
    networkProfile: {
      networkApiVersion: '2020-11-01'
      networkInterfaceConfigurations: [
        {
          name: 'poc-vm-enactor-dockerswarm-${i}-nic'
          properties: {            
            deleteOption: 'Delete'
            ipConfigurations: [
              {
                name: 'ipconfig1'
                properties: {
                  subnet: {
                    id: aksStuff.outputs.dokerswarmsubnetId                    
                  }                  
                }
              }
            ]
          }
        }
      ]
    }    
    osProfile: {
      adminPassword: 'W4Y7&Pb^fnX*SLRY'
      adminUsername: 'bondgroup'    
      computerName: 'dockerswarm'
    }
    storageProfile: {
      imageReference: {
        offer: '0001-com-ubuntu-server-jammy'
        publisher: 'canonical'      
        sku: '22_04-lts-gen2'
        version: 'latest'
      }      
      osDisk: {
        createOption: 'fromImage'
        deleteOption: 'Delete'
        managedDisk: {
          storageAccountType: 'StandardSSD_LRS'
        }
      }
    }
  }
}]
