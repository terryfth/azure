resource wwsf 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'poc-asp-terry-03'
  location: 'eastasia'
  sku: {
    tier: 'WorkflowStandard'
    name: 'WS1'
  }
}
