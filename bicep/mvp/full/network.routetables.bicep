param location string = resourceGroup().location

resource rtb 'Microsoft.Network/routeTables@2023-02-01' = {
  name: 'poc-rtb-terry-mvp-01'
  location: location
  tags: {
    environment: 'poc'
  }
  /*
  properties: {
    disableBgpRoutePropagation: bool
    routes: [
      {
        id: 'string'
        name: 'string'
        properties: {
          addressPrefix: 'string'
          hasBgpOverride: bool
          nextHopIpAddress: 'string'
          nextHopType: 'string'
        }
        type: 'string'
      }
    ]
  }
  */
}
