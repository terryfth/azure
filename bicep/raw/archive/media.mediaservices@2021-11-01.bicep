resource symbolicname 'Microsoft.Media/mediaservices@2021-11-01' = {
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
    encryption: {
      identity: {
        userAssignedIdentity: 'string'
        useSystemAssignedIdentity: bool
      }
      keyVaultProperties: {
        keyIdentifier: 'string'
      }
      type: 'string'
    }
    keyDelivery: {
      accessControl: {
        defaultAction: 'string'
        ipAllowList: [
          'string'
        ]
      }
    }
    publicNetworkAccess: 'string'
    storageAccounts: [
      {
        id: 'string'
        identity: {
          userAssignedIdentity: 'string'
          useSystemAssignedIdentity: bool
        }
        type: 'string'
      }
    ]
    storageAuthentication: 'string'
  }
}