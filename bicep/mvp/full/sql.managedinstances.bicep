param location string = resourceGroup().location

resource smi 'Microsoft.Sql/managedInstances@2022-05-01-preview' = {
  name: 'poc-smi-terry-mvp-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  sku: {
  //capacity: int
  //family: 'string'
    name: 'GP_Gen5'
  //size: 'string'
  //tier: 'string'
  }
  /*
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  */  
  properties: {
    administratorLogin: 'terryfth'
    administratorLoginPassword: 'Qej8h8w54q594'
    /*
    administrators: {
      administratorType: 'ActiveDirectory'
      azureADOnlyAuthentication: bool
      login: 'string'
      principalType: 'string'
      sid: 'string'
      tenantId: 'string'
    }    
    collation: 'string'
    dnsZonePartner: 'string'
    instancePoolId: 'string'
    keyId: 'string'
    licenseType: 'string'
    maintenanceConfigurationId: 'string'
    managedInstanceCreateMode: 'string'
    minimalTlsVersion: 'string'
    primaryUserAssignedIdentityId: 'string'
    proxyOverride: 'string'
    publicDataEndpointEnabled: bool
    requestedBackupStorageRedundancy: 'string'
    restorePointInTime: 'string'
    servicePrincipal: {
      type: 'string'
    }
    sourceManagedInstanceId: 'string'
    */
    storageSizeInGB: 32
    subnetId: '/subscriptions/559eff50-5276-42ce-80ba-a825f69db9fb/resourceGroups/poc-20230716/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-mvp-01/subnets/poc-sbn-sqlmi'
  //timezoneId: 'string'
    vCores: 4
  //zoneRedundant: bool   
  }  
}
