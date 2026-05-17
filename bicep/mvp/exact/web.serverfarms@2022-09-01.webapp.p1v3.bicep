resource wwsf 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'poc-asp-terry-01'
  location: 'eastasia'
  sku: {
    tier: 'PremiumV3'
    name: 'P1v3'
  }
}
