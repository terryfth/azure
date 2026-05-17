resource appServicePlan 'Microsoft.Web/serverFarms@2022-09-01' = {
  name: 'ap-dev-apollo2-wapp-asp-02'
  location: 'eastasia'
  kind: 'app'
  sku: {
    capacity: 3
    family: 'Pv3'
    name: 'P1v3'
    size: 'P1v3'
    tier: 'PremiumV3'
  }
  properties: {
    elasticScaleEnabled: false
    hyperV: false
    isSpot: false
    isXenon: false
    maximumElasticWorkerCount: 30
    perSiteScaling: false
    reserved: false
    zoneRedundant: true
  }
}
