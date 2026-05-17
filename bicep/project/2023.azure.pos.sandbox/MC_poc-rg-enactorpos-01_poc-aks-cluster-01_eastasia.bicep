param location string = resourceGroup().location

param tagValues object = {
  environment: 'poc'
  project: 'enactor pos'
  createdby: 'terry.fung_ext@chanel.com'
}

resource vnet 'Microsoft.Network/virtualNetworks@2023-02-01' existing = {
  name: 'aks-vnet-19394511'
}

resource azurebastionsubnet 'Microsoft.Network/virtualNetworks/subnets@2023-02-01' = {
  name: 'AzureBastionSubnet'
  parent: vnet
  properties: {
    addressPrefix: '10.225.0.0/26'
  }
}

resource dockerswarmsubnet 'Microsoft.Network/virtualNetworks/subnets@2023-02-01' = {
  name: 'dockerswarm'
  parent: vnet
  properties: {
    addressPrefix: '10.225.0.64/26'
    natGateway: {
      id: ngw.id
    }
  }
}

resource pipngw 'Microsoft.Network/publicIPAddresses@2023-02-01' = {
  name: 'poc-pip-ngw-01'
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

resource ngw 'Microsoft.Network/natGateways@2023-02-01' = {
  name: 'poc-ngw-terry-mvp-01'
  location: location
  tags: tagValues
  sku: {
    name: 'Standard'
  }
  properties: {
    idleTimeoutInMinutes: 4
    publicIpAddresses: [
      {
        id: pipngw.id
      }
    ]
  }
}


output azurebastionsubnetId string = azurebastionsubnet.id
output dokerswarmsubnetId string = dockerswarmsubnet.id
