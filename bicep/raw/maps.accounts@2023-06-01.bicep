resource symbolicname 'Microsoft.Maps/accounts@2023-06-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'string'
  }
  kind: 'string'
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    cors: {
      corsRules: [
        {
          allowedOrigins: [
            'string'
          ]
        }
      ]
    }
    disableLocalAuth: bool
    encryption: {
      customerManagedKeyEncryption: {
        keyEncryptionKeyIdentity: {
          delegatedIdentityClientId: 'string'
          identityType: 'string'
          userAssignedIdentityResourceId: 'string'
        }
        keyEncryptionKeyUrl: 'string'
      }
      infrastructureEncryption: 'string'
    }
    linkedResources: [
      {
        id: 'string'
        uniqueName: 'string'
      }
    ]
  }
}