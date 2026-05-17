resource sss 'Microsoft.Search/searchServices@2022-09-01' = {
  name: 'poc-sss-terry-01'
  location: 'eastasia'
  sku: {
    name: 'standard'
  }
}
