resource symbolicname 'Microsoft.Sql/servers/virtualNetworkRules@2022-05-01-preview' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    ignoreMissingVnetServiceEndpoint: bool
    virtualNetworkSubnetId: 'string'
  }
}
