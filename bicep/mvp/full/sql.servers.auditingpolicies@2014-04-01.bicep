resource symbolicname 'Microsoft.Sql/servers/auditingPolicies@2014-04-01' = {
  name: 'default'
  parent: resourceSymbolicName
  properties: {
    auditingState: 'string'
    auditLogsTableName: 'string'
    eventTypesToAudit: 'string'
    fullAuditLogsTableName: 'string'
    retentionDays: 'string'
    storageAccountKey: 'string'
    storageAccountName: 'string'
    storageAccountResourceGroupName: 'string'
    storageAccountSecondaryKey: 'string'
    storageAccountSubscriptionId: 'string'
    storageTableEndpoint: 'string'
  }
}
