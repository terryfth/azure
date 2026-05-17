resource symbolicname 'Microsoft.Sql/servers/auditingSettings@2022-05-01-preview' = {
  name: 'default'
  parent: resourceSymbolicName
  properties: {
    auditActionsAndGroups: [
      'string'
    ]
    isAzureMonitorTargetEnabled: bool
    isDevopsAuditEnabled: bool
    isManagedIdentityInUse: bool
    isStorageSecondaryKeyInUse: bool
    queueDelayMs: int
    retentionDays: int
    state: 'string'
    storageAccountAccessKey: 'string'
    storageAccountSubscriptionId: 'string'
    storageEndpoint: 'string'
  }
}