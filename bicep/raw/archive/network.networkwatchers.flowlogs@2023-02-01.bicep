resource symbolicname 'Microsoft.Network/networkWatchers/flowLogs@2023-02-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  parent: resourceSymbolicName
  properties: {
    enabled: bool
    flowAnalyticsConfiguration: {
      networkWatcherFlowAnalyticsConfiguration: {
        enabled: bool
        trafficAnalyticsInterval: int
        workspaceId: 'string'
        workspaceRegion: 'string'
        workspaceResourceId: 'string'
      }
    }
    format: {
      type: 'JSON'
      version: int
    }
    retentionPolicy: {
      days: int
      enabled: bool
    }
    storageId: 'string'
    targetResourceId: 'string'
  }
}