resource rds 'Microsoft.Cache/redis@2022-06-01' = {
  name: 'poc-rdi-terry-01'
  location: 'eastasia'
  properties: {
    sku: {
      capacity: '0'
      family: 'C'
      name: 'Standard'
    }
  }
}
