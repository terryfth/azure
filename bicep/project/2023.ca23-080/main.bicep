resource asp1 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'ap-prd-apollo2-pos-lapp-asp-01'
  location: 'eastasia'
  kind: 'elastic'
  sku: {
    capacity: 3
    name: 'WS2'
    tier: 'WorkflowStandard'    
  }
  properties: {
    elasticScaleEnabled: true
    maximumElasticWorkerCount: 30
    reserved: false
    zoneRedundant: true
  }
}

resource asp2 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'ap-prd-apollo2-pos-fapp-asp-01'
  location: 'eastasia'
  kind: 'function'
  sku: {
    capacity: 3
    name: 'P1v3'
    tier: 'PremiumV3'    
  }
  properties: {    
    maximumElasticWorkerCount: 30
    reserved: false
    zoneRedundant: true
  }
}

