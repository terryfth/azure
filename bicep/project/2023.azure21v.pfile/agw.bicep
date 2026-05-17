param location string = resourceGroup().location

var agwName = 'poc-agw-terry-mvp-01'
var backendAddressPoolName = 'backendpool01'
var frontendIpName = 'frontendIp01'
var frontendPortName = 'port_80'
var httpListenersName = 'listener01'
var backendHttpSettingsCollectionName = 'http_80'



resource agw 'Microsoft.Network/applicationGateways@2023-02-01' = {
  name: agwName
  location: location
  properties: {
    enableHttp2: true
    firewallPolicy: {
      id: '/subscriptions/13b900bf-01eb-4789-874e-51b339d6bbe5/resourceGroups/poc-20230802/providers/Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies/poc-waf-terry-01'
    }
    backendAddressPools: [
      {      
        name: 'azrhb3pfwebwu'
        properties: {
          backendAddresses: [
            {
              ipAddress: '10.199.250.132'
            }
            {              
              ipAddress: '10.199.250.133'
            }
          ]
        }
      }
      {      
        name: 'azrhb3pfappwu'
        properties: {
          backendAddresses: [
            {
              ipAddress: '10.199.250.134'
            }
            {              
              ipAddress: '10.199.250.135'
            }
          ]
        }
      }
    ]    
    backendHttpSettingsCollection: [
      {
        name: 'http_80'
        properties: {
          port: 80
          protocol: 'http'
        }
      }
      {
        name: 'https_443'
        properties: {
          port: 443
          protocol: 'https'
          probeEnabled: false
          requestTimeout: 300
        }
      }
    ]
    frontendIPConfigurations: [
      {
        name: 'feip-public-01'
        properties: {
          publicIPAddress: {
            id: resourceId('Microsoft.Network/publicIPAddresses', 'cn-hb3-hub-npd-mgt-ext-agw-pip-01')
          }
        }
      }
    ]
    
    frontendPorts: [
      {
      //id: 'string'
        name: 'port_80'
        properties: {
          port: 80
        }
      }
      {
        //id: 'string'
          name: 'port_443'
          properties: {
            port: 443
          }
        }
    ]    
    gatewayIPConfigurations: [
      {
      //id: 'string'
        name: 'gatewayIpConfig1'
        properties: {
          subnet: {
            id: '/subscriptions/13b900bf-01eb-4789-874e-51b339d6bbe5/resourceGroups/poc-20230802/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-01/subnets/poc-sbn-agw'
          }
        }
      }
    ]
    httpListeners: [
      {
      //id: 'string'
        name: 'origin-onbasecn-web-uat.lpl-cloud.cn'
        properties: {
          hostName: 'origin-onbasecn-web-uat.lpl-cloud.cn'
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', agwName, 'feip-public-01')
          }
          frontendPort: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts', agwName, frontendPortName)
          }
        }
      }
      {        
          name: 'origin-onbasecn-app-uat.lpl-cloud.cn'
          properties: {
            hostName: 'origin-onbasecn-app-uat.lpl-cloud.cn'
            frontendIPConfiguration: {
              id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', agwName, 'feip-public-01')
            }
            frontendPort: {
              id: resourceId('Microsoft.Network/applicationGateways/frontendPorts', agwName, frontendPortName)
            }
          }
        }
    ]
    requestRoutingRules: [
      {
        name: 'origin-onbasecn-web-uat.lpl-cloud.cn'
        properties: {
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', agwName, 'azrhb3pfwebwu')
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', agwName, backendHttpSettingsCollectionName)
          }
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', agwName, 'origin-onbasecn-web-uat.lpl-cloud.cn')
          }
          priority: 10
          ruleType: 'basic'
        }
      }
      {
        name: 'origin-onbasecn-app-uat.lpl-cloud.cn'
        properties: {
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', agwName, 'azrhb3pfappwu')
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', agwName, backendHttpSettingsCollectionName)
          }
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', agwName, 'origin-onbasecn-app-uat.lpl-cloud.cn')
          }
          priority: 20
          ruleType: 'basic'
        }
      }
    ]

    sku: {
      capacity: 2
      name: 'WAF_v2'
      tier: 'WAF_v2'
    }
  }

  dependsOn: [    
    pip
  ]
}

resource pip 'Microsoft.Network/publicIPAddresses@2023-02-01' = {
  name: 'cn-hb3-hub-npd-mgt-ext-agw-pip-01'
  location: 'chinanorth3'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
  }
  zones: [
    '1'
    '2'
    '3'
  ]
}
