resource vnt 'Microsoft.Network/virtualNetworks@2023-05-01' = {
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

resource snt1 'Microsoft.Network/virtualNetworks/subnets@2023-05-01' = {
  name: 'subnet01'
  parent: vnt
  properties: {
    addressPrefix: '10.0.0.0/24'
  }
}
