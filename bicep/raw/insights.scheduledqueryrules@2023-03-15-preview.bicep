resource symbolicname 'Microsoft.Insights/scheduledQueryRules@2023-03-15-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  kind: 'string'
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    actions: {
      actionGroups: [
        'string'
      ]
      actionProperties: {}
      customProperties: {}
    }
    autoMitigate: bool
    checkWorkspaceAlertsStorageConfigured: bool
    criteria: {
      allOf: [
        {
          dimensions: [
            {
              name: 'string'
              operator: 'string'
              values: [
                'string'
              ]
            }
          ]
          failingPeriods: {
            minFailingPeriodsToAlert: int
            numberOfEvaluationPeriods: int
          }
          metricMeasureColumn: 'string'
          metricName: 'string'
          operator: 'string'
          query: 'string'
          resourceIdColumn: 'string'
          threshold: int
          timeAggregation: 'string'
        }
      ]
    }
    description: 'string'
    displayName: 'string'
    enabled: bool
    evaluationFrequency: 'string'
    muteActionsDuration: 'string'
    overrideQueryTimeRange: 'string'
    ruleResolveConfiguration: {
      autoResolved: bool
      timeToResolve: 'string'
    }
    scopes: [
      'string'
    ]
    severity: int
    skipQueryValidation: bool
    targetResourceTypes: [
      'string'
    ]
    windowSize: 'string'
  }
}