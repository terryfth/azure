resource symbolicname 'Microsoft.Sql/servers/elasticPools@2022-05-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    capacity: int
    family: 'string'
    name: 'string'
    size: 'string'
    tier: 'string'
  }
  parent: resourceSymbolicName
  properties: {
    highAvailabilityReplicaCount: int
    licenseType: 'string'
    maintenanceConfigurationId: 'string'
    maxSizeBytes: int
    minCapacity: int
    perDatabaseSettings: {
      maxCapacity: int
      minCapacity: int
    }
    zoneRedundant: bool
  }
}