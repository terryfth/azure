resource rtb 'Microsoft.Network/routeTables@2023-05-01' = {
  name: 'poc-rtb-terry-01'
  location: 'eastasia'
}  

resource udr01 'Microsoft.Network/routeTables/routes@2023-05-01' = {
  name: 'route-to-internet'
  parent: rtb
  properties: {
    addressPrefix: '0.0.0.0/0'
    nextHopIpAddress: '10.0.0.7'
    nextHopType: 'VirtualAppliance'
  }
}
