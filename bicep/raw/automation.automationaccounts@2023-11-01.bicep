resource symbolicname 'Microsoft.Automation/automationAccounts@2023-11-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
    {customized property}: 'string'
  identity: {
    type: 'string'
    userAssignedIdentities: {
      {customized property}: {}
    }
  }
  properties: {
    disableLocalAuth: bool
    encryption: {
      identity: {
        userAssignedIdentity: any()
      }
      keySource: 'string'
      keyVaultProperties: {
        keyName: 'string'
        keyvaultUri: 'string'
        keyVersion: 'string'
      }
    }
    publicNetworkAccess: bool
    sku: {
      capacity: int
      family: 'string'
      name: 'string'
    }
  }
}