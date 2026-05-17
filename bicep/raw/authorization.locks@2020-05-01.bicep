resource symbolicname 'Microsoft.Authorization/locks@2020-05-01' = {
  name: 'string'
  scope: resourceSymbolicName
  properties: {
    level: 'string'
    notes: 'string'
    owners: [
      {
        applicationId: 'string'
      }
    ]
  }
}