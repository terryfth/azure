resource sqs 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: 'poc-sqs-terry-01'
  location: 'eastasia'
  properties: {
    administrators: {
      administratorType: 'ActiveDirectory'
      //azureADOnlyAuthentication: true
      login: 'terry.fung_ext@chanel.com'
      principalType: 'Group'
      sid: 'f39f9608-e69b-46a4-a8e6-7ac8bd0c2202'
      tenantId: 'e6cbec2f-2f23-43ca-82c4-51a7c9b71e7a'

    }
    minimalTlsVersion: '1.2'
    publicNetworkAccess: 'Enabled'
  }
}

resource symbolicname 'Microsoft.Sql/servers/azureADOnlyAuthentications@2022-05-01-preview' = {
  name: 'Default'
  parent: sqs
  properties: {
    azureADOnlyAuthentication: false
  }
}

resource sqsas 'Microsoft.Sql/servers/auditingSettings@2022-05-01-preview' = {
  name: 'default'
  parent: sqs
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


resource sqsatp 'Microsoft.Sql/servers/advancedThreatProtectionSettings@2022-05-01-preview' = {
  name: 'default'
  parent: sqs
  properties: {
    state: 'Enabled'
  }
}
