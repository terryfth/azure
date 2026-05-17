resource symbolicname 'Microsoft.AppConfiguration/configurationStores/privateEndpointConnections@2023-03-01' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    privateEndpoint: {
      id: 'string'
    }
    privateLinkServiceConnectionState: {
      description: 'string'
      status: 'string'
    }
  }
}