resource symbolicname 'Microsoft.Purview/accounts@2021-07-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    cloudConnectors: {}
    managedResourceGroupName: 'string'
    publicNetworkAccess: 'string'
  }
}