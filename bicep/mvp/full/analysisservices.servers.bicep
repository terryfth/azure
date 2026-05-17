param location string = resourceGroup().location

resource ass 'Microsoft.AnalysisServices/servers@2017-08-01' = {
  name: 'pocassterrymvp01'
  location: location
  tags: {
    environment: 'poc'
  }  
  sku: {
  //capacity: int
    name: 'D1'
  //tier: 'string'
  }
  /*
  properties: {
    asAdministrators: {
      members: [
        'string'
      ]
    }
    backupBlobContainerUri: 'string'
    gatewayDetails: {
      gatewayResourceId: 'string'
    }
    ipV4FirewallSettings: {
      enablePowerBIService: bool
      firewallRules: [
        {
          firewallRuleName: 'string'
          rangeEnd: 'string'
          rangeStart: 'string'
        }
      ]
    }
    managedMode: int
    querypoolConnectionMode: 'string'
    serverMonitorMode: int
    sku: {
      capacity: int
      name: 'string'
      tier: 'string'
    }
  }
  */
}
