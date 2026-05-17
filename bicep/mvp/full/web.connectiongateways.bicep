param location string = resourceGroup().location



resource wcg 'Microsoft.Web/connectionGateways@2016-06-01' = {
  name: 'poc-wcg-terry-01'
  location: location
  tags: {
    environment: 'poc'
  }
//etag: 'string'
  /*
  properties: {    
    backendUri: 'string'
    connectionGatewayInstallation: {
      id: 'string'
      location: 'string'
      name: 'string'
      type: 'string'
    }    
    contactInformation: [
      'string'
    ]
    description: 'string'
    displayName: 'string'
    machineName: 'string'
    status: any()
    
  }
  */
}
