resource symbolicname 'Microsoft.RecoveryServices/vaults/backupPolicies@2023-01-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  eTag: 'string'
  properties: {
    protectedItemsCount: int
    resourceGuardOperationRequests: [
      'string'
    ]
    backupManagementType: 'AzureIaasVM'
    instantRPDetails: {
      azureBackupRGNamePrefix: 'string'
      azureBackupRGNameSuffix: 'string'
    }
    instantRpRetentionRangeInDays: int
    policyType: 'string'
    retentionPolicy: {
      retentionPolicyType: 'LongTermRetentionPolicy'
      dailySchedule: {
        retentionDuration: {
          count: int
          durationType: 'string'
        }
        retentionTimes: [
          'string'
        ]
      }
      monthlySchedule: {
        retentionDuration: {
          count: int
          durationType: 'string'
        }
        retentionScheduleDaily: {
          daysOfTheMonth: [
            {
              date: int
              isLast: bool
            }
          ]
        }
        retentionScheduleFormatType: 'string'
        retentionScheduleWeekly: {
          daysOfTheWeek: [
            'string'
          ]
          weeksOfTheMonth: [
            'string'
          ]
        }
        retentionTimes: [
          'string'
        ]
      }
      weeklySchedule: {
        daysOfTheWeek: [
          'string'
        ]
        retentionDuration: {
          count: int
          durationType: 'string'
        }
        retentionTimes: [
          'string'
        ]
      }
      yearlySchedule: {
        monthsOfYear: [
          'string'
        ]
        retentionDuration: {
          count: int
          durationType: 'string'
        }
        retentionScheduleDaily: {
          daysOfTheMonth: [
            {
              date: int
              isLast: bool
            }
          ]
        }
        retentionScheduleFormatType: 'string'
        retentionScheduleWeekly: {
          daysOfTheWeek: [
            'string'
          ]
          weeksOfTheMonth: [
            'string'
          ]
        }
        retentionTimes: [
          'string'
        ]
      }
    }
    schedulePolicy: {
      schedulePolicyType: 'SimpleSchedulePolicy'
      hourlySchedule: {
        interval: int
        scheduleWindowDuration: int
        scheduleWindowStartTime: 'string'
      }
      scheduleRunDays: [
        'string'
      ]
      scheduleRunFrequency: 'string'
      scheduleRunTimes: [
        'string'
      ]
      scheduleWeeklyFrequency: int
    }
    tieringPolicy: {}
    timeZone: 'string'
  }
}
