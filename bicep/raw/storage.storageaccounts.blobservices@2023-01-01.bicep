resource symbolicname 'Microsoft.Storage/storageAccounts/blobServices@2023-01-01' = {
  name: 'default'
  parent: resourceSymbolicName
  properties: {
    automaticSnapshotPolicyEnabled: bool
    changeFeed: {
      enabled: bool
      retentionInDays: int
    }
    containerDeleteRetentionPolicy: {
      allowPermanentDelete: bool
      days: int
      enabled: bool
    }
    cors: {
      corsRules: [
        {
          allowedHeaders: [
            'string'
          ]
          allowedMethods: [
            'string'
          ]
          allowedOrigins: [
            'string'
          ]
          exposedHeaders: [
            'string'
          ]
          maxAgeInSeconds: int
        }
      ]
    }
    defaultServiceVersion: 'string'
    deleteRetentionPolicy: {
      allowPermanentDelete: bool
      days: int
      enabled: bool
    }
    isVersioningEnabled: bool
    lastAccessTimeTrackingPolicy: {
      blobType: [
        'string'
      ]
      enable: bool
      name: 'AccessTimeTracking'
      trackingGranularityInDays: int
    }
    restorePolicy: {
      days: int
      enabled: bool
    }
  }
}