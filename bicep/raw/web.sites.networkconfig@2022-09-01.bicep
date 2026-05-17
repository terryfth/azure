resource symbolicname 'Microsoft.Web/sites/networkConfig@2022-09-01' = {
  name: 'virtualNetwork'
  kind: 'string'
  parent: resourceSymbolicName
  properties: {
    subnetResourceId: 'string'
    swiftSupported: bool
  }
}
