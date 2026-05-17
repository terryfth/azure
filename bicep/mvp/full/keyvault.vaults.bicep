resource kv 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: 'poc-akv-terry-02'
  location: 'eastasia'
  tags: {
    environment: 'poc'
  }
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: 'e6cbec2f-2f23-43ca-82c4-51a7c9b71e7a'
//    publicNetworkAccess: 'enabled'
    accessPolicies: [
/*
      {
        applicationId: 'string'
        objectId: 'string'
        permissions: {
          certificates: [
            'string'
          ]
          keys: [
            'string'
          ]
          secrets: [
            'string'
          ]
          storage: [
            'string'
          ]
        }
        tenantId: 'string'
      }
*/
    ]
/*
    createMode: 'string'
    enabledForDeployment: bool
    enabledForDiskEncryption: bool
    enabledForTemplateDeployment: bool
    enablePurgeProtection: bool
    enableRbacAuthorization: bool
    enableSoftDelete: bool
    networkAcls: {
      bypass: 'string'
      defaultAction: 'string'
      ipRules: [
        {
          value: 'string'
        }
      ]
      virtualNetworkRules: [
        {
          id: 'string'
          ignoreMissingVnetServiceEndpoint: bool
        }
      ]
    }
    provisioningState: 'string'
    softDeleteRetentionInDays: int
    vaultUri: 'string'
*/
  }
}
