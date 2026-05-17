resource cos 'Microsoft.DocumentDB/databaseAccounts@2023-04-15' = {
  name: 'poc-rg-terry-01'
  location: 'eastasia'
  properties: {
    databaseAccountOfferType: 'Standard'
  }
}
