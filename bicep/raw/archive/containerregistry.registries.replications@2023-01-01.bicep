resource symbolicname 'Microsoft.ContainerRegistry/registries/replications@2023-01-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  properties: {
    regionEndpointEnabled: bool
    zoneRedundancy: 'string'
  }
}