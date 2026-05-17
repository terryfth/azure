resource ai 'Microsoft.Insights/components@2020-02-02' = {
  name: 'poc-ais-terry-01'
  location: 'eastasia'
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}
