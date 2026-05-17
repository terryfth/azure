param location string = resourceGroup().location



resource rsv 'Microsoft.RecoveryServices/vaults@2023-01-01' existing = {
  name: 'poc-rsv-terry-01'
}

resource backupstorageconfig 'Microsoft.RecoveryServices/vaults/backupstorageconfig@2023-01-01' = {
  name: 'vaultstorageconfig'
  location: location
  tags: {
    environment: 'poc'    
  }
  parent: rsv
  //eTag: 'string'
properties: {
    crossRegionRestoreFlag: false    
    dedupState: 'Enabled'
    storageModelType: 'ZoneRedundant'
    storageType: 'ZoneRedundant'
    //storageTypeState: 'string'
    //xcoolState: 'string'    
  }  
}
