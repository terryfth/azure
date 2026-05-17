resource symbolicname 'Microsoft.EventGrid/systemTopics@2023-06-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  identity: {
    principalId: 'string'
    tenantId: 'string'
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    source: 'string'
    topicType: 'string'
  }
}