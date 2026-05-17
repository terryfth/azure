param location string = resourceGroup().location

resource pip 'Microsoft.Network/publicIPAddresses@2023-02-01' = {
  name: 'poc-pip-terry-01'
  location: location
  tags: {
    environment: 'poc'
  }
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  /*
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  */
  properties: {
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'    
    /*
    ddosSettings: {
      ddosProtectionPlan: {
        id: 'string'
      }
      protectionMode: 'string'
    }    
    deleteOption: 'string'
    dnsSettings: {
      domainNameLabel: 'string'
      domainNameLabelScope: 'string'
      fqdn: 'string'
      reverseFqdn: 'string'
    }
    idleTimeoutInMinutes: int
    ipAddress: 'string'
    ipTags: [
      {
        ipTagType: 'string'
        tag: 'string'
      }
    ]
    linkedPublicIPAddress: {
      public-ip-address-object
    }
      extendedLocation: {
        name: 'string'
        type: 'EdgeZone'
      }
      id: 'string'
      location: 'string'
      properties: {
      sku: {
        name: 'string'
        tier: 'string'
      }
      tags: {}
      zones: [
        'string'
      ]
    }
    migrationPhase: 'string'
    natGateway: {
      id: 'string'
      location: 'string'
      properties: {
        idleTimeoutInMinutes: int
        publicIpAddresses: [
          {
            id: 'string'
          }
        ]
        publicIpPrefixes: [
          {
            id: 'string'
          }
        ]
      }
      sku: {
        name: 'Standard'
      }
      tags: {}
      zones: [
        'string'
      ]
    }

    publicIPPrefix: {
      id: 'string'
    }
    servicePublicIPAddress: {
      public-ip-address-object
    }
      extendedLocation: {
        name: 'string'
        type: 'EdgeZone'
      }
      id: 'string'
      location: 'string'
      properties: {
      sku: {
        name: 'string'
        tier: 'string'
      }
      tags: {}
      zones: [
        'string'
      ]
    }
    */
  }
  zones: [
    '1'
    '2'
    '3'
  ]
}
