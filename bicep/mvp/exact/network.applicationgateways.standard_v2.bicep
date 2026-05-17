resource vnt 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: 'poc-vnt-terry-lab-agw'
  location: 'eastasia'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'agwSubnet'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
    ]  
  }
}

resource pip 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: 'poc-pip-terry-01'
  location: 'eastasia'
  sku: {
    name: 'Standard'
  }
  properties: {    
    publicIPAllocationMethod: 'Static'
  }
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
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'agwSubnet')
          }
        }
      }
    ]
    frontendIPConfigurations: [
      {
        name: 'private'
        properties: {
          privateIPAddress: '10.0.0.254'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnt.name, 'agwSubnet')
          }
        }
      }
      {
        name : 'public'
        properties: {
          publicIPAddress: {
            id: pip.id
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
      {
        name: 'port_443'
        properties: {
          port: 443
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
