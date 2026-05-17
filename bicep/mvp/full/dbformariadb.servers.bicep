param location string = resourceGroup().location

resource mdb 'Microsoft.DBforMariaDB/servers@2018-06-01' = {
  name: 'poc-mdb-terry-mvp-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  /*
  sku: {
    capacity: int
    family: 'string'
    name: 'string'
    size: 'string'
    tier: 'string'
  }
  */
  properties: {
    /*
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
    createMode: 'Default'
    */
    administratorLogin: 'terryfth'
    administratorLoginPassword: 'qej8h8w54q594O9t8h)qww294e'
    
  }  
}
