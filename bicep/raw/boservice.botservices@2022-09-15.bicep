resource symbolicname 'Microsoft.BotService/botServices@2022-09-15' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'string'
  }
  kind: 'string'
  etag: 'string'
  properties: {
    allSettings: {}
    appPasswordHint: 'string'
    cmekKeyVaultUrl: 'string'
    description: 'string'
    developerAppInsightKey: 'string'
    developerAppInsightsApiKey: 'string'
    developerAppInsightsApplicationId: 'string'
    disableLocalAuth: bool
    displayName: 'string'
    endpoint: 'string'
    iconUrl: 'string'
    isCmekEnabled: bool
    isStreamingSupported: bool
    luisAppIds: [
      'string'
    ]
    luisKey: 'string'
    manifestUrl: 'string'
    msaAppId: 'string'
    msaAppMSIResourceId: 'string'
    msaAppTenantId: 'string'
    msaAppType: 'string'
    openWithHint: 'string'
    parameters: {}
    publicNetworkAccess: 'string'
    publishingCredentials: 'string'
    schemaTransformationVersion: 'string'
    storageResourceId: 'string'
    tenantId: 'string'
  }
}