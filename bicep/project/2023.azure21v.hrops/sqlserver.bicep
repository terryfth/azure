param location string = resourceGroup().location

resource sql 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: 'poc-sqs-terry-1'
  location: location
  tags: {
    environment: 'poc'    
  }  
  identity: {
    type: 'SystemAssigned'  
  }  
  properties: {
    administrators: {
      administratorType: 'ActiveDirectory'
      azureADOnlyAuthentication: true
      login: 'G-G21V-INF-CACHEMIRE-MSSQL-TEAM'
      principalType: 'Group'
      sid: '5d3a14c6-12df-4d3e-80f3-60d1735758d1'
      tenantId: 'c21071d5-c0c4-4b90-8b35-1212ce2feb59'
    }
    minimalTlsVersion: '1.2'
    publicNetworkAccess: 'Enabled'  
  }  
}


resource audit 'Microsoft.Sql/servers/auditingSettings@2022-05-01-preview' = {
  name: 'default'
  parent: sql
  properties: {
    auditActionsAndGroups: [
      'SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP'      
      'FAILED_DATABASE_AUTHENTICATION_GROUP'
      'BATCH_COMPLETED_GROUP'
    ]
    isAzureMonitorTargetEnabled: true
    state: 'Enabled'
  }
}



resource masterDb 'Microsoft.Sql/servers/databases@2021-11-01-preview' = {
  parent: sql
  location: location
  name: 'master'
  properties: {}
}

resource diagnosticSettings 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  scope: masterDb
  name: 'SQLSecurityAuditEvents_3d229c42-c7e7-4c97-9a99-ec0d0d8b86c1'
  properties: {
    workspaceId: '/subscriptions/133903d0-42be-4d19-9128-91519244cf51/resourcegroups/cn-hb3-hub-prd-log-rg/providers/microsoft.operationalinsights/workspaces/cn-hb3-hub-prd-log-laws'
    logs: [
      {
        category: 'SQLSecurityAuditEvents'
        enabled: true
        retentionPolicy: {
          days: 0
          enabled: false
        }
      }
    ]
  }
}


resource sqldb 'Microsoft.Sql/servers/databases@2022-11-01-preview' = {
  name: 'cnhb3devhropsmssqldb01'
  location: location
  parent: sql
  sku: {
    name: 'GP_Gen5_2'
    tier: 'GeneralPurpose'    
  }
}

resource sqlatp 'Microsoft.Sql/servers/advancedThreatProtectionSettings@2022-05-01-preview' = {
  name: 'Default'
  parent: sql
  properties: {
    state: 'Enabled'
  }
}
