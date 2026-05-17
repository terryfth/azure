resource appdotnet 'Microsoft.Web/sites@2022-09-01' = {
  name: 'poc-app-terry-dotnet-01'
  location: 'eastasia'
  properties: {
    httpsOnly: true
    publicNetworkAccess: 'Enabled'
    serverFarmId: '/subscriptions/02af7de8-5a55-4ea6-8951-7af0eb7581fb/resourceGroups/poc-rg-terry/providers/Microsoft.Web/serverfarms/poc-asp-terry-01'
    virtualNetworkSubnetId: '/subscriptions/02af7de8-5a55-4ea6-8951-7af0eb7581fb/resourceGroups/poc-rg-terry/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-01/subnets/subnet1'
    vnetRouteAllEnabled: true
    siteConfig: {
      alwaysOn: true
      ftpsState: 'FtpsOnly'
      http20Enabled: true
      minTlsVersion: '1.2'
      netFrameworkVersion: 'v7.0'
      remoteDebuggingEnabled: false
      scmMinTlsVersion: '1.2'
      appSettings: [
        {
          name: 'CURRENT_STACK'
          value: 'dotnet'
        }
      ]
    }
  }
}
