resource symbolicname 'Microsoft.Network/loadBalancers/backendAddressPools@2023-02-01' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    drainPeriodInSeconds: int
    loadBalancerBackendAddresses: [
      {
        name: 'string'
        properties: {
          adminState: 'string'
          ipAddress: 'string'
          loadBalancerFrontendIPConfiguration: {
            id: 'string'
          }
          subnet: {
            id: 'string'
          }
          virtualNetwork: {
            id: 'string'
          }
        }
      }
    ]
    location: 'string'
    tunnelInterfaces: [
      {
        identifier: int
        port: int
        protocol: 'string'
        type: 'string'
      }
    ]
    virtualNetwork: {
      id: 'string'
    }
  }
}