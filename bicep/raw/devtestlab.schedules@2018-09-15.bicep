resource symbolicname 'Microsoft.DevTestLab/schedules@2018-09-15' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    dailyRecurrence: {
      time: 'string'
    }
    hourlyRecurrence: {
      minute: int
    }
    notificationSettings: {
      emailRecipient: 'string'
      notificationLocale: 'string'
      status: 'string'
      timeInMinutes: int
      webhookUrl: 'string'
    }
    status: 'string'
    targetResourceId: 'string'
    taskType: 'string'
    weeklyRecurrence: {
      time: 'string'
      weekdays: [
        'string'
      ]
    }
  }
}