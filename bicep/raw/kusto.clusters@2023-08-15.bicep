resource symbolicname 'Microsoft.Kusto/clusters@2023-08-15' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    capacity: int
    name: 'string'
    tier: 'string'
  }
  identity: {
    type: 'string'
    userAssignedIdentities: {
      {customized property}: {}
    }
  }
  properties: {
    acceptedAudiences: [
      {
        value: 'string'
      }
    ]
    allowedFqdnList: [
      'string'
    ]
    allowedIpRangeList: [
      'string'
    ]
    enableAutoStop: bool
    enableDiskEncryption: bool
    enableDoubleEncryption: bool
    enablePurge: bool
    enableStreamingIngest: bool
    engineType: 'string'
    keyVaultProperties: {
      keyName: 'string'
      keyVaultUri: 'string'
      keyVersion: 'string'
      userIdentity: 'string'
    }
    languageExtensions: {
      value: [
        {
          languageExtensionCustomImageName: 'string'
          languageExtensionImageName: 'string'
          languageExtensionName: 'string'
        }
      ]
      value: [
        {
          languageExtensionCustomImageName: 'string'
          languageExtensionImageName: 'string'
          languageExtensionName: 'string'
        }
      ]
    }
    optimizedAutoscale: {
      isEnabled: bool
      maximum: int
      minimum: int
      version: int
    }
    publicIPType: 'string'
    publicNetworkAccess: 'string'
    restrictOutboundNetworkAccess: 'string'
    trustedExternalTenants: [
      {
        value: 'string'
      }
    ]
    virtualClusterGraduationProperties: 'string'
    virtualNetworkConfiguration: {
      dataManagementPublicIpId: 'string'
      enginePublicIpId: 'string'
      state: 'string'
      subnetId: 'string'
    }
  }
  zones: [
    'string'
  ]
}