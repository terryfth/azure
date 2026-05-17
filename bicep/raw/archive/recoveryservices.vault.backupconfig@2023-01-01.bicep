resource symbolicname 'Microsoft.RecoveryServices/vaults/backupconfig@2023-01-01' = {
  name: 'vaultconfig'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  eTag: 'string'
  properties: {
    enhancedSecurityState: 'string'
    isSoftDeleteFeatureStateEditable: bool
    resourceGuardOperationRequests: [
      'string'
    ]
    softDeleteFeatureState: 'string'
    storageModelType: 'string'
    storageType: 'string'
    storageTypeState: 'string'
  }
}
