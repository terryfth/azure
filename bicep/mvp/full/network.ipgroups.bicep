param location string = resourceGroup().location

resource ipg 'Microsoft.Network/ipGroups@2023-02-01' = {
  name: 'poc-ipg-terry-mvp-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  /*
  properties: {
    ipAddresses: [
      'string'
    ]
  }
  */
}
