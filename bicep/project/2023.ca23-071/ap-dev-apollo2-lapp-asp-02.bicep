resource appServicePlan 'Microsoft.Web/serverFarms@2022-09-01' = {
  name: 'ap-dev-apollo2-lapp-asp-02'
  location: 'eastasia'
  kind: 'elastic'
  sku: {
    capacity: 1
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
    zoneRedundant: false
  }
}

output appServicePlanResourceId string = appServicePlan.id
