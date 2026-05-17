resource symbolicname 'Microsoft.DBforMySQL/flexibleServers@2023-10-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'string'
    tier: 'string'
  }
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      {customized property}: any()
    }
  }
  properties: {
    administratorLogin: 'string'
    administratorLoginPassword: 'string'
    availabilityZone: 'string'
    backup: {
      backupRetentionDays: int
      geoRedundantBackup: 'string'
    }
    createMode: 'string'
    dataEncryption: {
      geoBackupKeyURI: 'string'
      geoBackupUserAssignedIdentityId: 'string'
      primaryKeyURI: 'string'
      primaryUserAssignedIdentityId: 'string'
      type: 'string'
    }
    highAvailability: {
      mode: 'string'
      standbyAvailabilityZone: 'string'
    }
    importSourceProperties: {
      dataDirPath: 'string'
      sasToken: 'string'
      storageType: 'AzureBlob'
      storageUrl: 'string'
    }
    maintenanceWindow: {
      customWindow: 'string'
      dayOfWeek: int
      startHour: int
      startMinute: int
    }
    network: {
      delegatedSubnetResourceId: 'string'
      privateDnsZoneResourceId: 'string'
      publicNetworkAccess: 'string'
    }
    replicationRole: 'string'
    restorePointInTime: 'string'
    sourceServerResourceId: 'string'
    storage: {
      autoGrow: 'string'
      autoIoScaling: 'string'
      iops: int
      logOnDisk: 'string'
      storageSizeGB: int
    }
    version: 'string'
  }
}