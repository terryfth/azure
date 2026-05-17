param location string = resourceGroup().location



resource symbolicname 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'poc-asp-terry-02'
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
    capacity: 3
  //family: 'string'
    /*
    locations: [
      'string'
    ]
    */    
    name: 'P1V3'
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
    tier: 'PremiumV3'
  }  
  kind: 'linux'
  /*
  extendedLocation: {
    name: 'string'
  }
  */
  properties: {
    elasticScaleEnabled: true
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
    */
    maximumElasticWorkerCount: 6
  //perSiteScaling: bool
    reserved: true
  //spotExpirationTime: 'string'
  //targetWorkerCount: 3
  //targetWorkerSizeId: int
  //workerTierName: 'string'    
    zoneRedundant: true
  }
}
