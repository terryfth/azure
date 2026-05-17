resource ia 'Microsoft.Logic/integrationAccounts@2019-05-01' = {
  name: 'poc-ia-terry'
  location: 'eastasia'
  tags: {
    environment: 'poc'
  }
  sku: {
    name: 'basic'
  }
  properties: {
/*
    integrationServiceEnvironment: {
      id: 'string'
    }
    state: 'string'
*/
  }
}
