resource sqlmi 'Microsoft.Sql/managedInstances@2023-02-01-preview' existing = {
  name: 'cn-hb3-dev-pfl-sqlm'
}


resource aes 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'aes'
  scope: sqlmi
  properties: {
    logs: [
      {
        category: 'SQLSecurityAuditEvents'        
        enabled: true
      }
    ]
    storageAccountId: '/subscriptions/133903d0-42be-4d19-9128-91519244cf51/resourceGroups/cn-hb3-hub-prd-log-rg/providers/Microsoft.Storage/storageAccounts/cnhb3infosecmgtlog01'
  }
}
