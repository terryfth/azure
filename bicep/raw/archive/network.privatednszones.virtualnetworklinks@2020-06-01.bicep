resource symbolicname 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  etag: 'string'
  properties: {
    registrationEnabled: bool
    virtualNetwork: {
      id: 'string'
    }
  }
}
