resource symbolicname 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'string'
  scope: resourceSymbolicName
  properties: {
    eventHubAuthorizationRuleId: 'string'
    eventHubName: 'string'
    logAnalyticsDestinationType: 'string'
    logs: [
      {
        category: 'string'
        categoryGroup: 'string'
        enabled: bool
        retentionPolicy: {
          days: int
          enabled: bool
        }
      }
    ]
    marketplacePartnerId: 'string'
    metrics: [
      {
        category: 'string'
        enabled: bool
        retentionPolicy: {
          days: int
          enabled: bool
        }
        timeGrain: 'string'
      }
    ]
    serviceBusRuleId: 'string'
    storageAccountId: 'string'
    workspaceId: 'string'
  }
}
