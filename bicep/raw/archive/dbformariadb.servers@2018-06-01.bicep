resource symbolicname 'Microsoft.DBforMariaDB/servers@2018-06-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    capacity: int
    family: 'string'
    name: 'string'
    size: 'string'
    tier: 'string'
  }
  properties: {
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
    administratorLogin: 'string'
    administratorLoginPassword: 'string'
  }
}