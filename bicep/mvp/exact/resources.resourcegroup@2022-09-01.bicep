targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'poc-rg-terry-01'
  location: 'eastasia'
}
