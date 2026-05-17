param location string = resourceGroup().location

resource ngw 'Microsoft.Network/natGateways@2023-02-01' = {
  name: 'poc-ngw-terry-mvp-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  sku: {
    name: 'Standard'
  }
  /*
  properties: {
    idleTimeoutInMinutes: int
    publicIpAddresses: [
      {
        id: 'string'
      }
    ]
    publicIpPrefixes: [
      {
        id: 'string'
      }
    ]
  }
  zones: [
    'string'
  ]
  */
}
