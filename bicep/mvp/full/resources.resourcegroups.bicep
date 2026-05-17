targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'poc-rg-01'
  location: 'eastasia'
  tags: {
    environment: 'poc'
  }
/*
  managedBy: 'string'
  properties: {}
*/
}
