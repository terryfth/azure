resource symbolicname 'Microsoft.Network/networkWatchers/connectionMonitors@2023-02-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  properties: {
    autoStart: bool
    destination: {
      address: 'string'
      port: int
      resourceId: 'string'
    }
    endpoints: [
      {
        address: 'string'
        coverageLevel: 'string'
        filter: {
          items: [
            {
              address: 'string'
              type: 'AgentAddress'
            }
          ]
          type: 'Include'
        }
        name: 'string'
        resourceId: 'string'
        scope: {
          exclude: [
            {
              address: 'string'
            }
          ]
          include: [
            {
              address: 'string'
            }
          ]
        }
        type: 'string'
      }
    ]
    monitoringIntervalInSeconds: int
    notes: 'string'
    outputs: [
      {
        type: 'Workspace'
        workspaceSettings: {
          workspaceResourceId: 'string'
        }
      }
    ]
    source: {
      port: int
      resourceId: 'string'
    }
    testConfigurations: [
      {
        httpConfiguration: {
          method: 'string'
          path: 'string'
          port: int
          preferHTTPS: bool
          requestHeaders: [
            {
              name: 'string'
              value: 'string'
            }
          ]
          validStatusCodeRanges: [
            'string'
          ]
        }
        icmpConfiguration: {
          disableTraceRoute: bool
        }
        name: 'string'
        preferredIPVersion: 'string'
        protocol: 'string'
        successThreshold: {
          checksFailedPercent: int
          roundTripTimeMs: int
        }
        tcpConfiguration: {
          destinationPortBehavior: 'string'
          disableTraceRoute: bool
          port: int
        }
        testFrequencySec: int
      }
    ]
    testGroups: [
      {
        destinations: [
          'string'
        ]
        disable: bool
        name: 'string'
        sources: [
          'string'
        ]
        testConfigurations: [
          'string'
        ]
      }
    ]
  }
}