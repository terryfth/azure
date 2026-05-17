resource symbolicname 'Microsoft.KeyVault/vaults/keys@2022-07-01' = {
  name: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  properties: {
    attributes: {
      enabled: bool
      exp: int
      exportable: bool
      nbf: int
    }
    curveName: 'string'
    keyOps: [
      'string'
    ]
    keySize: int
    kty: 'string'
    release_policy: {
      contentType: 'string'
      data: 'string'
    }
    rotationPolicy: {
      attributes: {
        expiryTime: 'string'
      }
      lifetimeActions: [
        {
          action: {
            type: 'string'
          }
          trigger: {
            timeAfterCreate: 'string'
            timeBeforeExpiry: 'string'
          }
        }
      ]
    }
  }
}