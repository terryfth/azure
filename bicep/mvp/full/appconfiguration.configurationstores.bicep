param location string = resourceGroup().location

resource acs 'Microsoft.AppConfiguration/configurationStores@2023-03-01' = {
  name: 'poc-acs-terry-01'
  location: location
  tags: {
    environment: 'poc'    
  }
    sku: {
    name: 'free'
  }
  /*
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    createMode: 'string'
    disableLocalAuth: bool
    enablePurgeProtection: bool
    encryption: {
      keyVaultProperties: {
        identityClientId: 'string'
        keyIdentifier: 'string'
      }
    }
    publicNetworkAccess: 'string'
    softDeleteRetentionInDays: int
  }
  */
}
