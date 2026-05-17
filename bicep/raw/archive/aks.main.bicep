resource symbolicname 'Microsoft.ContainerService/managedClusters/maintenanceConfigurations@2023-03-02-preview' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    maintenanceWindow: {
      durationHours: int
      notAllowedDates: [
        {
          end: 'string'
          start: 'string'
        }
      ]
      schedule: {
        absoluteMonthly: {
          dayOfMonth: int
          intervalMonths: int
        }
        daily: {
          intervalDays: int
        }
        relativeMonthly: {
          dayOfWeek: 'string'
          intervalMonths: int
          weekIndex: 'string'
        }
        weekly: {
          dayOfWeek: 'string'
          intervalWeeks: int
        }
      }
      startDate: 'string'
      startTime: 'string'
      utcOffset: 'string'
    }
    notAllowedTime: [
      {
        end: 'string'
        start: 'string'
      }
    ]
    timeInWeek: [
      {
        day: 'string'
        hourSlots: [
          int
        ]
      }
    ]
  }
}