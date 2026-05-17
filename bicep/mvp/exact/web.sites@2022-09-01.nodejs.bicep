resource wwsf 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'poc-asp-terry-01'  
  location: 'eastasia'
  kind: 'linux'
  sku: {
    tier: 'PremiumV3'
    name: 'P1v3'
  }  
}

resource wapNodeJs 'Microsoft.Web/sites@2020-06-01' = {
  name: 'poc-wap-terry-nodejs18lts-01'
  location: 'eastasia'
  kind: 'app,linux'
  properties: {
    serverFarmId: wwsf.id
    publicNetworkAccess: 'Enabled'
    siteConfig: {
      linuxFxVersion: 'NODE|18-lts'
    }
  }
}
