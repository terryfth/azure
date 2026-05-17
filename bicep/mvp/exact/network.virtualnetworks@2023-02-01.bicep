resource vnt 'Microsoft.Network/virtualNetworks@2023-02-01' = {
  name: 'poc-vnt-terry-01'
  location: 'eastasia'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}
