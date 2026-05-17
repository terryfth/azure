param location string = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'pocsraterry01'
  location: location
  tags: {
    environment: 'poc'    
  }
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
/*
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
*/
  properties: {
/*
    accessTier: 'string'
    allowBlobPublicAccess: bool
    allowCrossTenantReplication: bool
    allowedCopyScope: 'string'
    allowSharedKeyAccess: bool
    defaultToOAuthAuthentication: bool
    dnsEndpointType: 'string'
    isHnsEnabled: bool
    isLocalUserEnabled: bool
    isNfsV3Enabled: bool
    isSftpEnabled: bool
    largeFileSharesState: 'string'
    minimumTlsVersion: 'string'
    publicNetworkAccess: 'string'
    supportsHttpsTrafficOnly: bool
    azureFilesIdentityBasedAuthentication: {
      activeDirectoryProperties: {
        accountType: 'string'
        azureStorageSid: 'string'
        domainGuid: 'string'
        domainName: 'string'
        domainSid: 'string'
        forestName: 'string'
        netBiosDomainName: 'string'
        samAccountName: 'string'
      }
      defaultSharePermission: 'string'
      directoryServiceOptions: 'string'
    }
    customDomain: {
      name: 'string'
      useSubDomainName: bool
    }
    encryption: {
      identity: {
        federatedIdentityClientId: 'string'
        userAssignedIdentity: 'string'
      }
      keySource: 'string'
      keyvaultproperties: {
        keyname: 'string'
        keyvaulturi: 'string'
        keyversion: 'string'
      }
      requireInfrastructureEncryption: bool
      services: {
        blob: {
          enabled: bool
          keyType: 'string'
        }
        file: {
          enabled: bool
          keyType: 'string'
        }
        queue: {
          enabled: bool
          keyType: 'string'
        }
        table: {
          enabled: bool
          keyType: 'string'
        }
      }
    }
    immutableStorageWithVersioning: {
      enabled: bool
      immutabilityPolicy: {
        allowProtectedAppendWrites: bool
        immutabilityPeriodSinceCreationInDays: int
        state: 'string'
      }
    }
    keyPolicy: {
      keyExpirationPeriodInDays: int
    }
    networkAcls: {
      bypass: 'string'
      defaultAction: 'string'
      ipRules: [
        {
          action: 'Allow'
          value: 'string'
        }
      ]
      resourceAccessRules: [
        {
          resourceId: 'string'
          tenantId: 'string'
        }
      ]
      virtualNetworkRules: [
        {
          action: 'Allow'
          id: 'string'
          state: 'string'
        }
      ]
    }
    routingPreference: {
      publishInternetEndpoints: bool
      publishMicrosoftEndpoints: bool
      routingChoice: 'string'
    }
    sasPolicy: {
      expirationAction: 'Log'
      sasExpirationPeriod: 'string'
    }
*/
  }
}
