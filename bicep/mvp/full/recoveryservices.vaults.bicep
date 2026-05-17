param location string = resourceGroup().location


resource rsv 'Microsoft.RecoveryServices/vaults@2023-01-01' = {
  name: 'poc-rsv-terry-01'
  location: location
  tags: {
    environment: 'poc'    
  }  
  sku: {
  //capacity: 'string'
  //family: 'string'
    name: 'RS0'
  //size: 'string'
    tier: 'Standard'
  }
  /*
  etag: 'string'
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  */
  properties: {
    /*
    encryption: {
      infrastructureEncryption: 'string'
      kekIdentity: {
        userAssignedIdentity: 'string'
        useSystemAssignedIdentity: bool
      }
      keyVaultProperties: {
        keyUri: 'string'
      }
    }
    monitoringSettings: {
      azureMonitorAlertSettings: {
        alertsForAllJobFailures: 'string'
      }
      classicAlertSettings: {
        alertsForCriticalOperations: 'string'
      }
    }
    moveDetails: {}
    */
    publicNetworkAccess: 'Enabled'
    /*
    redundancySettings: {}
    securitySettings: {
      immutabilitySettings: {
        state: 'string'
      }
    }
    upgradeDetails: {}
    */
  }
}
