/*
resource wwsf 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'poc-asp-terry-01'  
  location: 'eastasia'
  kind: 'linux'
  sku: {
    tier: 'PremiumV3'
    name: 'P1v3'
  }  
}
*/

resource wwsf 'Microsoft.Web/serverfarms@2022-09-01' existing = {
  name: 'poc-asp-terry-01'
}
  

resource wapNodeJs 'Microsoft.Web/sites@2020-06-01' = {
  name: 'poc-wap-terry-java17-01'
  location: 'eastasia'
  kind: 'app,linux'
  properties: {
    serverFarmId: wwsf.id
    publicNetworkAccess: 'Enabled'
    siteConfig: {
      linuxFxVersion: 'JAVA|17-java17'
    }
  }
}
