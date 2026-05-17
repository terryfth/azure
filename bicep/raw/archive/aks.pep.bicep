resource symbolicname 'Microsoft.ContainerService/managedClusters/privateEndpointConnections@2023-03-02-preview' = {
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