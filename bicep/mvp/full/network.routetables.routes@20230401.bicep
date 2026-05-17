resource udr1 'Microsoft.Network/routeTables/routes@2023-04-01' = {
  name: 'default_route'
  parent: rtb  
  properties: {
    addressPrefix: '0.0.0.0/0'
  //hasBgpOverride: bool
    nextHopIpAddress: '10.99.128.68'
    nextHopType: 'VirtualAppliance'
  }  
}

resource rtb 'Microsoft.Network/routeTables@2023-04-01' existing = {
  name: 'poc-rtb-terry-01'
}
