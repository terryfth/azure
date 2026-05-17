resource symbolicname 'Microsoft.RecoveryServices/vaults/backupstorageconfig@2023-01-01' = {
  name: 'vaultstorageconfig'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  eTag: 'string'
  properties: {
    crossRegionRestoreFlag: bool
    dedupState: 'string'
    storageModelType: 'string'
    storageType: 'string'
    storageTypeState: 'string'
    xcoolState: 'string'
  }
}
