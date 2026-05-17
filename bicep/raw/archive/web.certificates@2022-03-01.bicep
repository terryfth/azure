resource symbolicname 'Microsoft.Web/certificates@2022-03-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  kind: 'string'
  properties: {
    canonicalName: 'string'
    domainValidationMethod: 'string'
    hostNames: [
      'string'
    ]
    keyVaultId: 'string'
    keyVaultSecretName: 'string'
    password: 'string'
    pfxBlob: any()
    serverFarmId: 'string'
  }
}