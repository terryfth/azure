// unable to create zone redundant report by vendor, test
resource asp 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'ap-prd-apollo2-fapp-asp-05'
  location: 'eastasia'
  kind: 'Windows'
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
