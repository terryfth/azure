resource symbolicname 'Microsoft.Insights/autoscalesettings@2022-10-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    enabled: bool
    name: 'string'
    notifications: [
      {
        email: {
          customEmails: [
            'string'
          ]
          sendToSubscriptionAdministrator: bool
          sendToSubscriptionCoAdministrators: bool
        }
        operation: 'Scale'
        webhooks: [
          {
            properties: {}
            serviceUri: 'string'
          }
        ]
      }
    ]
    predictiveAutoscalePolicy: {
      scaleLookAheadTime: 'string'
      scaleMode: 'string'
    }
    profiles: [
      {
        capacity: {
          default: 'string'
          maximum: 'string'
          minimum: 'string'
        }
        fixedDate: {
          end: 'string'
          start: 'string'
          timeZone: 'string'
        }
        name: 'string'
        recurrence: {
          frequency: 'string'
          schedule: {
            days: [
              'string'
            ]
            hours: [
              int
            ]
            minutes: [
              int
            ]
            timeZone: 'string'
          }
        }
        rules: [
          {
            metricTrigger: {
              dimensions: [
                {
                  DimensionName: 'string'
                  Operator: 'string'
                  Values: [
                    'string'
                  ]
                }
              ]
              dividePerInstance: bool
              metricName: 'string'
              metricNamespace: 'string'
              metricResourceLocation: 'string'
              metricResourceUri: 'string'
              operator: 'string'
              statistic: 'string'
              threshold: int
              timeAggregation: 'string'
              timeGrain: 'string'
              timeWindow: 'string'
            }
            scaleAction: {
              cooldown: 'string'
              direction: 'string'
              type: 'string'
              value: 'string'
            }
          }
        ]
      }
    ]
    targetResourceLocation: 'string'
    targetResourceUri: 'string'
  }
}