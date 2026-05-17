resource symbolicname 'Microsoft.AppPlatform/Spring@2022-12-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    capacity: int
    name: 'string'
    tier: 'string'
  }
  properties: {
    networkProfile: {
      appNetworkResourceGroup: 'string'
      appSubnetId: 'string'
      ingressConfig: {
        readTimeoutInSeconds: int
      }
      outboundType: 'string'
      serviceCidr: 'string'
      serviceRuntimeNetworkResourceGroup: 'string'
      serviceRuntimeSubnetId: 'string'
    }
    vnetAddons: {
      logStreamPublicEndpoint: bool
    }
    zoneRedundant: bool
  }
}