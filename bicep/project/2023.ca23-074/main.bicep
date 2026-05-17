param location string = resourceGroup().location

resource vnt 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: 'ap-dev-star-vnet'
  location: location
  properties: {
    enableDdosProtection: false
    addressSpace: {
      addressPrefixes: [
        '10.99.182.96/27'
      ]
    }
    dhcpOptions: {
      dnsServers: [
        '10.9.4.14'
        '10.9.4.15'
      ]
    }
    subnets: [
      {
        name: 'ap-dev-star-vm-sbn'
        properties: {
          addressPrefix: '10.99.182.96/28'
          privateLinkServiceNetworkPolicies: 'Disabled'
          privateEndpointNetworkPolicies: 'Disabled'    
          networkSecurityGroup: {
            id: nsg1.id
          }
          routeTable: {
            id: rtb.id
          }
          serviceEndpoints: [
            {
              locations: [
                'eastasia'
              ]
              service: 'Microsoft.Sql'
            }
          ]          
        }
      }
      {
        name: 'ap-dev-star-agw-sbn'
        properties: {
          addressPrefix: '10.99.182.112/28'
          privateLinkServiceNetworkPolicies: 'Disabled'
          privateEndpointNetworkPolicies: 'Disabled'    
          networkSecurityGroup: {
            id: nsg2.id
          }
          routeTable: {
            id: rtb.id
          }
        }
      }
    ]
  }
}


resource nsg1 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
  name: 'ap-dev-star-vm-sbn-nsg'
  location: location  
}


resource nsg2 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
  name: 'ap-dev-star-agw-sbn-nsg'
  location: location  
}


resource rtb 'Microsoft.Network/routeTables@2023-04-01' = {
  name: 'ap-dev-star-rtb'
  location: location
}


resource nic1 'Microsoft.Network/networkInterfaces@2023-04-01' = {
  name: 'azrapstrpdpwd01-nic01'
  location: location
  properties: {
    dnsSettings: {
      dnsServers: [
        '10.9.4.14'
        '10.9.4.15'
      ]
    }
    ipConfigurations: [
      { 
        name: 'ipconfig'
        properties: {
          privateIPAddress: '10.99.182.100'
          privateIPAllocationMethod: 'Static'          
          privateIPAddressVersion: 'IPv4'
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'ap-dev-star-vm-sbn')
          }
        }
      }
    ]
  }  
}


resource nic3 'Microsoft.Network/networkInterfaces@2023-04-01' = {
  name: 'azrapstrdkmld01-nic01'
  location: location
  properties: {
    auxiliaryMode: 'None'
    auxiliarySku: 'None'    
    dnsSettings: {
      dnsServers: [
        '10.9.4.14'
        '10.9.4.15'
      ]
    }
    ipConfigurations: [
      { 
        name: 'ipconfig'
        properties: {
          privateIPAddress: '10.99.182.102'
          privateIPAllocationMethod: 'Static'
          privateIPAddressVersion: 'IPv4'
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'ap-dev-star-vm-sbn')
          }
        }
      }
    ]
  }  
}

/*
resource vm1 'Microsoft.Compute/virtualMachines@2023-03-01' = {
  name: 'azrapstrpdpwd01'
  location: location
  zones: [
    '1'
  ]
  identity: {
    type: 'SystemAssigned'
  }
  properties: {    
    licenseType: 'Windows_Server'
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
    hardwareProfile: {
      vmSize: 'Standard_D2s_v3'
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nic1.id
          properties: {
            deleteOption: 'Delete'
          }
        }
      ]      
    }
    osProfile: {
      computerName: 'azrapstrpdpwd01'
      adminUsername: 'terryfth'
      adminPassword: 'r433gweTF@cn'
      windowsConfiguration: {
        enableAutomaticUpdates: false
        provisionVMAgent: true
        patchSettings: {
          enableHotpatching: false
          patchMode: 'Manual'
        }
      }
    }
    securityProfile: {      
      securityType: 'TrustedLaunch'
      uefiSettings: {
        secureBootEnabled: true
        vTpmEnabled: true
      }
    }
    storageProfile: {
      imageReference: {
        offer: 'WindowsServer'
        publisher: 'MicrosoftWindowsServer'
        sku: '2022-datacenter-azure-edition'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
        deleteOption: 'Delete'
        diskSizeGB: 128
        name: 'azrapstrpdpwd01-os'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
        }
      }
    }
  }
}
*/

/*
resource vm3 'Microsoft.Compute/virtualMachines@2023-03-01' = {
  name: 'azrapstrdkmld01'
  location: location
  zones: [
    '1'
  ]
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
    hardwareProfile: {
      vmSize: 'standard_B2als_v2'
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nic3.id
          properties: {
            deleteOption: 'Delete'
          }
        }        
      ]
    }
    osProfile: {
      computerName: 'azrapstrdkmld01'
      adminUsername: 'terryfth'
      adminPassword: 'r433gweTF@cn'
      linuxConfiguration: {
        patchSettings: {
          patchMode: 'ImageDefault'
        }
      }
    }
    securityProfile: {
      securityType: 'TrustedLaunch'
      uefiSettings: {
        secureBootEnabled: true
        vTpmEnabled: true
      }
    }
    storageProfile: {
      imageReference: {
        offer: 'RHEL'
        publisher: 'RedHat'
        sku: '87-gen2'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
        deleteOption: 'Delete'
        diskSizeGB: 128
        name: 'azrapstrdkmld01-os'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
        }
      }
    }
  }
}
*/

/*
resource rsv 'Microsoft.RecoveryServices/vaults@2023-01-01' = {
  name: ''
  location: 
}
*/

resource agw 'Microsoft.Network/applicationGateways@2023-04-01' = {
  name: 'ap-dev-star-agw'
  location: 'eastasia'
  properties: {
    sku: {
      tier: 'Standard_v2'
      name: 'Standard_v2'
      capacity: 1
    }    
    frontendIPConfigurations: [
      {
        name: 'feip-private-01'
        properties: {
          privateIPAddress: '10.99.182.126'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'ap-dev-star-vm-sbn')
          }
        }
      }      
    ]    
    gatewayIPConfigurations: [
      {
      //id: 'string'
        name: 'appGatewayIpConfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'ap-dev-star-agw-sbn')
          }
        }
      }
    ]    
    frontendPorts: [
      {
        name: 'port_443'
        properties: {
          port: 443
        }
      }
    ]
    backendAddressPools: [
      {
        name: 'ap-dev-star-enactor-ss-dev-backendpool'
        properties: {
          backendAddresses: [
            {
              ipAddress: '10.99.182.102'
            }
            {
              ipAddress: '10.99.182.103'
            }
            {
              ipAddress: '10.99.182.104'
            }
          ]
        }
      }
    ]
    backendHttpSettingsCollection: [
      {
        name: 'ap-dev-star-enactor-pdp-dev-https-setting'
        properties: {
          pickHostNameFromBackendAddress: true
          port: 443
          probeEnabled: false
          protocol: 'Https'
          requestTimeout: 20
        }
      }
    ]
    httpListeners:[
      {
        name: 'enactor-pdp-dev.global.lpl.top'
        properties: {
          hostName: 'enactor-pdp-dev.global.lpl.top'
          protocol: 'Https'
          requireServerNameIndication: true
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', agw.name, agw.properties.frontendIPConfigurations.name)
          }
        }
      }
    ]
  }
}
