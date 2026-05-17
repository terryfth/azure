param location string = resourceGroup().location

resource serverfarms 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'poc-asp-terry-01'
  location: location
  tags: {
    environment: 'poc'
  }
  sku: {
    /*
    capabilities: [
      {
        name: 'string'
        reason: 'string'
        value: 'string'
      }
    ]    
    capacity: 'int'
    family: 'string'
    locations: [
      'string'
    ]
    */
    name: 'WS1'
    /*
    size: 'string'
    skuCapacity: {
      default: 'int'
      elasticMaximum: 'int'
      maximum: 'int'
      minimum: 'int'
      scaleType: 'string'
    }
    */
    tier: 'WorkflowStandard'
  }
  /*
  kind: 'string'
  extendedLocation: {
    name: 'string'
  }
  properties: {
    elasticScaleEnabled: 'bool'
    freeOfferExpirationTime: 'string'
    hostingEnvironmentProfile: {
      id: 'string'
    }
    hyperV: 'bool'
    isSpot: 'bool'
    isXenon: 'bool'
    kubeEnvironmentProfile: {
      id: 'string'
    }
    maximumElasticWorkerCount: 'int'
    perSiteScaling: 'bool'
    reserved: 'bool'
    spotExpirationTime: 'string'
    targetWorkerCount: 'int'
    targetWorkerSizeId: 'int'
    workerTierName: 'string'
    zoneRedundant: 'bool'
  }
  */
}
