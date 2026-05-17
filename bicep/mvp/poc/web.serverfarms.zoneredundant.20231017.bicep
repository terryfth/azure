// unable to create zone redundant report by vendor, test
resource asp 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'ap-prd-apollo2-lapp-asp-06'
  location: 'eastasia'
  kind: 'Windows'
  sku: {
    capacity: 3
    family: 'WS'
    name: 'WS3'
    size: 'WS3'
    tier: 'WorkflowStandard'
  }
  properties: {
    elasticScaleEnabled: true
    hyperV: false
    isSpot: false
    isXenon: false
    maximumElasticWorkerCount: 30
    perSiteScaling: false
    reserved: false
    zoneRedundant: true
  }
}
