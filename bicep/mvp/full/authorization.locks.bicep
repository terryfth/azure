resource symbolicname 'Microsoft.Authorization/locks@2020-05-01' = {
  name: 'CanNotDelete'
//  scope: 'resource'
  properties: {
    level: 'CanNotDelete'
    /*
    notes: 'string'
    owners: [
      {
        applicationId: 'string'
      }
    ]
    */
  }
}
