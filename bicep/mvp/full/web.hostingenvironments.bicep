param location string = resourceGroup().location

resource ase 'Microsoft.Web/hostingEnvironments@2022-03-01' = {
  name: 'poc-ase-terry-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  
//kind: 'string'
  properties: {
    /*
    clusterSettings: [
      {
        name: 'string'
        value: 'string'
      }
    ]
    customDnsSuffixConfiguration: {
      kind: 'string'
      properties: {
        certificateUrl: 'string'
        dnsSuffix: 'string'
        keyVaultReferenceIdentity: 'string'
      }
    }
    dedicatedHostCount: int
    dnsSuffix: 'string'
    frontEndScaleFactor: int
    internalLoadBalancingMode: 'string'
    ipsslAddressCount: int
    multiSize: 'string'
    networkingConfiguration: {
      kind: 'string'
      properties: {
        allowNewPrivateEndpointConnections: bool
        ftpEnabled: bool
        inboundIpAddressOverride: 'string'
        remoteDebugEnabled: bool
      }
    }
    upgradePreference: 'string'
    userWhitelistedIpRanges: [
      'string'
    ]
    */
    virtualNetwork: {
      id: '/subscriptions/559eff50-5276-42ce-80ba-a825f69db9fb/resourceGroups/20230801/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-01/subnets/ase'
    //subnet: 'string'
    }
  //zoneRedundant: bool
  }  
}
