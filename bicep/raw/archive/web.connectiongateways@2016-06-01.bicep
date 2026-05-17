resource symbolicname 'Microsoft.Web/connectionGateways@2016-06-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  etag: 'string'
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
}
