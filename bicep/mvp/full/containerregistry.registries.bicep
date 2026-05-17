param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2023-01-01-preview' = {
  name: 'tfpocacrterry'
  location: location
  tags: {
    environment: 'poc'
  }  
  sku: {
    name: 'basic'
  }
  /*
  identity: {
    principalId: 'string'
    tenantId: 'string'
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    adminUserEnabled: bool
    anonymousPullEnabled: bool
    dataEndpointEnabled: bool
    encryption: {
      keyVaultProperties: {
        identity: 'string'
        keyIdentifier: 'string'
      }
      status: 'string'
    }
    networkRuleBypassOptions: 'string'
    networkRuleSet: {
      defaultAction: 'string'
      ipRules: [
        {
          action: 'Allow'
          value: 'string'
        }
      ]
    }
    policies: {
      azureADAuthenticationAsArmPolicy: {
        status: 'string'
      }
      exportPolicy: {
        status: 'string'
      }
      quarantinePolicy: {
        status: 'string'
      }
      retentionPolicy: {
        days: int
        status: 'string'
      }
      softDeletePolicy: {
        retentionDays: int
        status: 'string'
      }
      trustPolicy: {
        status: 'string'
        type: 'Notary'
      }
    }
    publicNetworkAccess: 'string'
    zoneRedundancy: 'string'
  }
  */
}
