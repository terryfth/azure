resource symbolicname 'Microsoft.Insights/metricAlerts@2018-03-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    actions: [
      {
        actionGroupId: 'string'
        webHookProperties: {}
      }
    ]
    autoMitigate: bool
    criteria: {
      'odata.type': 'string'
      // For remaining properties, see MetricAlertCriteria objects
    }
    description: 'string'
    enabled: bool
    evaluationFrequency: 'string'
    scopes: [
      'string'
    ]
    severity: int
    targetResourceRegion: 'string'
    targetResourceType: 'string'
    windowSize: 'string'
  }
}