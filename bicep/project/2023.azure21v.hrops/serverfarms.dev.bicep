param location string = resourceGroup().location



resource symbolicname 'Microsoft.Web/serverfarms@2022-03-01' = {
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
    */
  //capacity: int
  //family: 'string'
    /*
    locations: [
      'string'
    ]
    */    
    name: 'B2'
  //size: 'B2'
    /*
    skuCapacity: {
      default: int
      elasticMaximum: int
      maximum: int
      minimum: int
      scaleType: 'string'
    }
    */
    tier: 'Basic'
  }  
  kind: 'app'
  /*
  extendedLocation: {
    name: 'string'
  }
  */
  properties: {
    elasticScaleEnabled: false
  //freeOfferExpirationTime: 'string'
    /*
    hostingEnvironmentProfile: {
      id: 'string'
    }
    */
  //hyperV: false
  //isSpot: false
  //isXenon: bool
    /*
    kubeEnvironmentProfile: {
      id: 'string'
    }
    maximumElasticWorkerCount: int
    perSiteScaling: bool
    reserved: bool
    spotExpirationTime: 'string'
    targetWorkerCount: int
    targetWorkerSizeId: int
    workerTierName: 'string'
    */
    zoneRedundant: false
  }
}
