resource symbolicname 'Microsoft.Insights/activityLogAlerts@2023-01-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    actions: {
      actionGroups: [
        {
          actionGroupId: 'string'
          actionProperties: {}
          webhookProperties: {}
        }
      ]
    }
    condition: {
      allOf: [
        {
          anyOf: [
            {
              containsAny: [
                'string'
              ]
              equals: 'string'
              field: 'string'
            }
          ]
          containsAny: [
            'string'
          ]
          equals: 'string'
          field: 'string'
        }
      ]
    }
    description: 'string'
    enabled: bool
    scopes: [
      'string'
    ]
    tenantScope: 'string'
  }
}