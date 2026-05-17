param location string = resourceGroup().location

resource rdi 'Microsoft.Cache/redis@2022-06-01' = {
  name: 'poc-rdi-terry-mvp-01'
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
  properties: {
    /*
    enableNonSslPort: bool
    minimumTlsVersion: 'string'
    publicNetworkAccess: 'string'
    redisConfiguration: {
      'aof-backup-enabled': 'string'
      'aof-storage-connection-string-0': 'string'
      'aof-storage-connection-string-1': 'string'
      authnotrequired: 'string'
      'maxfragmentationmemory-reserved': 'string'
      'maxmemory-delta': 'string'
      'maxmemory-policy': 'string'
      'maxmemory-reserved': 'string'
      'preferred-data-persistence-auth-method': 'string'
      'rdb-backup-enabled': 'string'
      'rdb-backup-frequency': 'string'
      'rdb-backup-max-snapshot-count': 'string'
      'rdb-storage-connection-string': 'string'
    }
    redisVersion: 'string'
    replicasPerMaster: int
    replicasPerPrimary: int
    shardCount: int
    */
    sku: {
      capacity: 0
      family: 'C'
      name: 'Basic'
    }
    /*
    staticIP: 'string'
    subnetId: 'string'
    tenantSettings: {}
    */
  }
  /*
  zones: [
    'string'
  ]  
  */
}
