resource symbolicname 'Microsoft.RecoveryServices/vaults/backupFabrics/protectionContainers/protectedItems@2023-01-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  eTag: 'string'
  properties: {
    backupSetName: 'string'
    containerName: 'string'
    createMode: 'string'
    deferredDeleteTimeInUTC: 'string'
    deferredDeleteTimeRemaining: 'string'
    isArchiveEnabled: bool
    isDeferredDeleteScheduleUpcoming: bool
    isRehydrate: bool
    isScheduledForDeferredDelete: bool
    lastRecoveryPoint: 'string'
    policyId: 'string'
    policyName: 'string'
    resourceGuardOperationRequests: [
      'string'
    ]
    softDeleteRetentionPeriod: int
    sourceResourceId: 'string'
    protectedItemType: 'string'
    // For remaining properties, see ProtectedItem objects
  }
}
