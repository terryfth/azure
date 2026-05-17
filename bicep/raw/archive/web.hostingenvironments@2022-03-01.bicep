resource symbolicname 'Microsoft.Web/hostingEnvironments@2022-03-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  kind: 'string'
  properties: {
    clusterSettings: [
      {
        name: 'string'
        value: 'string'
      }
    ]
    customDnsSuffixConfiguration: {
      kind: 'string'
      properties: {
        certificateUrl: 'string'
        dnsSuffix: 'string'
        keyVaultReferenceIdentity: 'string'
      }
    }
    dedicatedHostCount: int
    dnsSuffix: 'string'
    frontEndScaleFactor: int
    internalLoadBalancingMode: 'string'
    ipsslAddressCount: int
    multiSize: 'string'
    networkingConfiguration: {
      kind: 'string'
      properties: {
        allowNewPrivateEndpointConnections: bool
        ftpEnabled: bool
        inboundIpAddressOverride: 'string'
        remoteDebugEnabled: bool
      }
    }
    upgradePreference: 'string'
    userWhitelistedIpRanges: [
      'string'
    ]
    virtualNetwork: {
      id: 'string'
      subnet: 'string'
    }
    zoneRedundant: bool
  }
}