resource evh 'Microsoft.EventHub/namespaces@2023-01-01-preview' = {
  name: 'poc-evh-terry-02'
  location: 'eastasia'
  sku: {
    name: 'Premium'
  }
  properties: {
    zoneRedundant: true
  }
}
