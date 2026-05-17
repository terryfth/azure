param location string = resourceGroup().location

resource symbolicname 'Microsoft.Network/routeFilters@2023-02-01' = {
  name: 'poc-rft-terry-mvp-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  /*
  properties: {
    rules: [
      {
        id: 'string'
        location: 'string'
        name: 'string'
        properties: {
          access: 'string'
          communities: [
            'string'
          ]
          routeFilterRuleType: 'Community'
        }
      }
    ]
  }
  */
}
