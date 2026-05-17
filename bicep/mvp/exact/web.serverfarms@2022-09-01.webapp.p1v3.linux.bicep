resource wwsf 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'poc-asp-terry-01'
  location: 'eastasia'
  kind: 'linux'
  properties: {
    reserved: true
  }
  sku: {
    tier: 'PremiumV3'
    name: 'P1v3'
  }
}
