param location string = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'pocsraterry01'
  location: location
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
}
