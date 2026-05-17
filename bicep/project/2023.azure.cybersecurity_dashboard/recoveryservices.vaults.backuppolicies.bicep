param location string = resourceGroup().location

resource rsv 'Microsoft.RecoveryServices/vaults@2023-01-01' existing = {
  name: 'poc-rsv-terry-01'
}

resource rsvbup 'Microsoft.RecoveryServices/vaults/backupPolicies@2023-01-01' = {
  name: 'poc-bup-terry-01'
  location: location
  /*
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }  
  */
  parent: rsv
  /*
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
      schedulePolicyType: 'string'
      // For remaining properties, see SchedulePolicy objects
    }
    tieringPolicy: {}
    timeZone: 'string'
  }
  */
}
