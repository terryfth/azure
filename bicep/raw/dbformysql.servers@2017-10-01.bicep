resource symbolicname 'Microsoft.DBforMySQL/servers@2017-12-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
    {customized property}: 'string'
  sku: {
    capacity: int
    family: 'string'
    name: 'string'
    size: 'string'
    tier: 'string'
  }
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    infrastructureEncryption: 'string'
    minimalTlsVersion: 'string'
    publicNetworkAccess: 'string'
    sslEnforcement: 'string'
    storageProfile: {
      backupRetentionDays: int
      geoRedundantBackup: 'string'
      storageAutogrow: 'string'
      storageMB: int
    }
    version: 'string'
    createMode: 'string'
    // For remaining properties, see ServerPropertiesForCreateOrServerProperties objects
  }
}