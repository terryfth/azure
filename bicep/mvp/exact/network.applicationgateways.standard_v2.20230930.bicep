resource vnt 'Microsoft.Network/virtualNetworks@2023-05-01' existing = {
  name: 'poc-vnt-pfilelab'
}

resource agw 'Microsoft.Network/applicationGateways@2023-04-01' = {
  name: 'poc-agw-terry-01'
  location: 'eastasia'
  properties: {
    sku: {
      tier: 'Standard_v2'
      name: 'Standard_v2'
      capacity: 1
    }
    gatewayIPConfigurations: [
      {
        name: 'gatewayIpConfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'appgw')
          }
        }
      }
    ]
    frontendIPConfigurations: [
      {
        name: 'private'
        properties: {
          privateIPAddress: '10.199.131.174'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'appgw')
          }
        }
      }      
    ]
    frontendPorts: [
      {
        name: 'port_80'
        properties: {
          port: 80
        }
      }
    ]
    httpListeners: [
      {
        name: 'www.example.com'
        properties: {
          hostName: 'www.example.com'    
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', 'poc-agw-terry-01', 'private')
          }
          frontendPort: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts', 'poc-agw-terry-01', 'port_80')
          }
        }
      }
    ]
    backendHttpSettingsCollection: [
      {
        name: 'backendHttpSettings01'
        properties: {
          port: 80
          protocol: 'Http'
        }
      }
    ]
    backendAddressPools: [
      {
        name: 'backendAddressPool01'
        properties: {
          backendAddresses: [
            {
              ipAddress: '10.199.131.132'
            }
            {
              ipAddress: '10.199.131.133'
            }
          ]
        }
      }
    ]
    requestRoutingRules: [
      {
        name: 'www.example.com'
        properties: {
          //ruleType: 'Basic'
          priority: 10
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', 'poc-agw-terry-01', 'www.example.com')
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', 'poc-agw-terry-01', 'backendHttpSettings01')
          }
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', 'poc-agw-terry-01', 'backendAddressPool01')
          }
        }
      }
    ]
  }
}
