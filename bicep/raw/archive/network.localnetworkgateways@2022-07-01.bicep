resource symbolicname 'Microsoft.Network/localNetworkGateways@2022-07-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    bgpSettings: {
      asn: int
      bgpPeeringAddress: 'string'
      bgpPeeringAddresses: [
        {
          customBgpIpAddresses: [
            'string'
          ]
          ipconfigurationId: 'string'
        }
      ]
      peerWeight: int
    }
    fqdn: 'string'
    gatewayIpAddress: 'string'
    localNetworkAddressSpace: {
      addressPrefixes: [
        'string'
      ]
    }
  }
}