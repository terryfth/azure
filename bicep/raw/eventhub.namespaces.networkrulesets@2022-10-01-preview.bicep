resource symbolicname 'Microsoft.EventHub/namespaces/networkRuleSets@2022-10-01-preview' = {
  name: 'default'
  parent: resourceSymbolicName
  properties: {
    defaultAction: 'string'
    ipRules: [
      {
        action: 'Allow'
        ipMask: 'string'
      }
    ]
    publicNetworkAccess: 'string'
    trustedServiceAccessEnabled: bool
    virtualNetworkRules: [
      {
        ignoreMissingVnetServiceEndpoint: bool
        subnet: {
          id: 'string'
        }
      }
    ]
  }
}
