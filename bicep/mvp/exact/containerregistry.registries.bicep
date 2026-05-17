resource acr 'Microsoft.ContainerRegistry/registries@2023-08-01-preview' = {
  name: 'pocacrterry01'
  location: 'eastasia'
  sku: {
    name: 'premium'
  }
}
