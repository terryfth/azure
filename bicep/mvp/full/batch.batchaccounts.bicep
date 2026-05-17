param location string = resourceGroup().location

resource bca 'Microsoft.Batch/batchAccounts@2022-10-01' = {
  name: 'pocbcaterrymvp01'
  location: location
  tags: {
    environment: 'poc'    
  }
  /*
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  */
  /*
  properties: {
    allowedAuthenticationModes: [
      'string'
    ]
    autoStorage: {
      authenticationMode: 'string'
      nodeIdentityReference: {
        resourceId: 'string'
      }
      storageAccountId: 'string'
    }
    encryption: {
      keySource: 'string'
      keyVaultProperties: {
        keyIdentifier: 'string'
      }
    }
    keyVaultReference: {
      id: 'string'
      url: 'string'
    }
    networkProfile: {
      accountAccess: {
        defaultAction: 'string'
        ipRules: [
          {
            action: 'Allow'
            value: 'string'
          }
        ]
      }
      nodeManagementAccess: {
        defaultAction: 'string'
        ipRules: [
          {
            action: 'Allow'
            value: 'string'
          }
        ]
      }
    }
    poolAllocationMode: 'string'
    publicNetworkAccess: 'string'
  }
  */
}
