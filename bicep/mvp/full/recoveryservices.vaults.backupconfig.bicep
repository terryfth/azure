param location string = resourceGroup().location



resource rsv 'Microsoft.RecoveryServices/vaults@2023-01-01' existing = {
  name: 'poc-rsv-terry-01'
}

resource backupconfig 'Microsoft.RecoveryServices/vaults/backupconfig@2023-01-01' = {
  name: 'vaultconfig'
  location: location
  /*
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  */
  parent: rsv
//eTag: 'string'
  properties: {
    /*
    enhancedSecurityState: 'string'
    isSoftDeleteFeatureStateEditable: bool
    resourceGuardOperationRequests: [
      'string'
    ]
    softDeleteFeatureState: 'string'
    */
    storageModelType: 'LocallyRedundant'
    storageType: 'LocallyRedundant'
  //storageTypeState: 'string'
  }
}
