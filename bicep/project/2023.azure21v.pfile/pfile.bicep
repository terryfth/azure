resource virtualNetworkSpoke 'Microsoft.Network/virtualNetworks@2023-02-01' = {  
  name: 'cn-hb3-uat-pfl-vnet'
  location: 'chinanorth3'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.199.250.192/26'
      ]
    }
    dhcpOptions: {
      dnsServers: [
        '10.199.152.201'
        '10.199.152.202'
      ]
    }    
  }
  resource subnetSqlmi 'subnets' = {
//    parent: virtualNetworkSpoke
    name: 'cn-hb3-uat-pfl-sqlm-sbn'
    properties: {
      addressPrefix: '10.199.250.224/27'
      delegations: [
        {
          name: 'Microsoft.Sql/managedInstances'
          properties: {
            serviceName: 'Microsoft.Sql/managedInstances'
          }
        }
      ]
  
    }
  }
  
  resource subnetVm 'subnets' = {
//    parent: virtualNetworkSpoke
    name: 'cn-hb3-uat-pfl-vm-sbn'
    properties: {
      addressPrefix: '10.199.250.192/27'    
    }
  }  
}


resource rtbSqlmi 'Microsoft.Network/routeTables@2023-02-01' = {  
  name: 'cn-hb3-uat-pfl-sqlm-sbn-rtb'
  location: 'chinanorth3'  
  resource udrSqlmi 'routes' = {
    name: 'route-to-internet'    
    properties: {
      addressPrefix: '0.0.0.0/0'
      nextHopIpAddress: '10.199.152.68'
      nextHopType: 'VirtualAppliance'
    }
  }
}


resource rtbVm 'Microsoft.Network/routeTables@2023-02-01' = {  
  name: 'cn-hb3-uat-pfl-vm-sbn-rtb'
  location: 'chinanorth3'  
  resource udrVm 'routes' = {
    name: 'route-to-internet'    
    properties: {
      addressPrefix: '0.0.0.0/0'
      nextHopIpAddress: '10.199.152.68'
      nextHopType: 'VirtualAppliance'
    }
  }  
}


resource nsgVm 'Microsoft.Network/networkSecurityGroups@2023-02-01' = {
  name: 'cn-hb3-uat-pfl-vm-nsg'
  location: 'chinanorth3'
}


resource nsgSqlmi 'Microsoft.Network/networkSecurityGroups@2023-02-01' = {
  name: 'cn-hb3-uat-pfl-sqlm-nsg'
  location: 'chinanorth3'
  resource nsgSrSqlmi 'securityRules' = {    
    name: 'allow_tds_inbound'
    properties: {
      access: 'Allow'
      description: 'Allow access to data'
      destinationAddressPrefix: '*'
      destinationPortRange: '1433'
      direction: 'Inbound'
      priority: 1000
      protocol: 'Tcp'
      sourceAddressPrefix: 'VirtualNetwork'
      sourcePortRange: '*'
    }
  }  
}


resource azrhb3pfwebwu01Nic 'Microsoft.Network/networkInterfaces@2023-02-01' = {
  name: 'azrhb3pfwebwu01-nic-1'
  location: 'chinanorth3'
  properties: {
    dnsSettings: {
      dnsServers: [
        '10.199.152.201'
        '10.199.152.202'
      ]
    }
    ipConfigurations: [
      {
        name: 'ipconfig'
        properties: {
          privateIPAddress: '10.199.250.196'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: virtualNetworkSpoke::subnetVm.id
          }
          loadBalancerBackendAddressPools: [
            {
              id: resourceId('Microsoft.Network/loadbalancers/backendAddressPools', 'cn-hb3-uat-pfl-lb-01', 'azrhb3pfwebwu')
            }
          ]
        }
      }
    ]
  }
  dependsOn: [
    lb
  ]
}

resource azrhb3pfwebwu02Nic 'Microsoft.Network/networkInterfaces@2023-02-01' = {
  name: 'azrhb3pfwebwu02-nic-1'
  location: 'chinanorth3'
  properties: {
    dnsSettings: {
      dnsServers: [
        '10.199.152.201'
        '10.199.152.202'
      ]
    }
    ipConfigurations: [
      {
        name: 'ipconfig'
        properties: {
          privateIPAddress: '10.199.250.197'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: virtualNetworkSpoke::subnetVm.id
          }
          loadBalancerBackendAddressPools: [
            {
              id: resourceId('Microsoft.Network/loadbalancers/backendAddressPools', 'cn-hb3-uat-pfl-lb-01', 'azrhb3pfwebwu')
            }
          ]
        }
      }
    ]
  }
  dependsOn: [
    lb    
  ]
}

resource azrhb3pfappwu01Nic 'Microsoft.Network/networkInterfaces@2023-02-01' = {
  name: 'azrhb3pfappwu01-nic-1'
  location: 'chinanorth3'
  properties: {
    dnsSettings: {
      dnsServers: [
        '10.199.152.201'
        '10.199.152.202'
      ]
    }
    ipConfigurations: [
      {
        name: 'ipconfig'
        properties: {
          privateIPAddress: '10.199.250.198'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: virtualNetworkSpoke::subnetVm.id
          }
          loadBalancerBackendAddressPools: [
            {
              id: resourceId('Microsoft.Network/loadbalancers/backendAddressPools', 'cn-hb3-uat-pfl-lb-01', 'azrhb3pfappwu')
            }
          ]
        }
      }
    ]
  }
  dependsOn: [
    lb
  ]
}

resource azrhb3pfappwu02Nic 'Microsoft.Network/networkInterfaces@2023-02-01' = {
  name: 'azrhb3pfappwu02-nic-1'
  location: 'chinanorth3'
  properties: {
    dnsSettings: {
      dnsServers: [
        '10.199.152.201'
        '10.199.152.202'
      ]
    }
    ipConfigurations: [
      {
        name: 'ipconfig'
        properties: {
          privateIPAddress: '10.199.250.199'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: virtualNetworkSpoke::subnetVm.id
          }
          loadBalancerBackendAddressPools: [
            {
              id: resourceId('Microsoft.Network/loadbalancers/backendAddressPools', 'cn-hb3-uat-pfl-lb-01', 'azrhb3pfappwu')
            }
          ]
        }
      }
    ]
  }
  dependsOn: [
    lb    
  ]
}


resource lb 'Microsoft.Network/loadBalancers@2023-02-01' = {
  name: 'cn-hb3-uat-pfl-lb-01'
  location: 'chinanorth3'
  sku:{
    name: 'Standard'
    tier: 'Regional'    
  }
  properties: {
    backendAddressPools: [
      {
        name: 'azrhb3pfwebwu'
      }
      {
        name: 'azrhb3pfappwu'
      }      
    ]
    frontendIPConfigurations: [
      {
        name: 'feip-private-01'
        properties: {
          privateIPAddress: '10.199.250.221'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: virtualNetworkSpoke::subnetVm.id
          }          
        }
      }
      {
        name: 'feip-private-02'
        properties: {
          privateIPAddress: '10.199.250.222'
          privateIPAllocationMethod: 'Static'
          subnet: {
            id: virtualNetworkSpoke::subnetVm.id
          }
        }
      }
    ]
    probes: [
      {
        name: 'https-443'
        properties: {
          port: '443'
          protocol:  'Https'
          requestPath: '/'
        }
      }
    ]
    loadBalancingRules: [
      {
        name: 'azrhb3pfwebwu'
        properties: {
          backendPort: '443'
          disableOutboundSnat: true
          enableFloatingIP: false
          frontendPort: '443'
          idleTimeoutInMinutes: 5
          loadDistribution: 'Default'
          protocol: 'Tcp'
          backendAddressPool: {
            id: resourceId('Microsoft.Network/loadbalancers/backendAddressPools', 'cn-hb3-uat-pfl-lb-01', 'azrhb3pfwebwu')
          }
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/loadbalancers/frontendIpConfigurations', 'cn-hb3-uat-pfl-lb-01', 'feip-private-01')
          }
          probe: {
            id: resourceId('Microsoft.Network/loadbalancers/probes', 'cn-hb3-uat-pfl-lb-01', 'https-443')
          }
        }
      }
      {
        name: 'azrhb3pfappwu'
        properties: {
          frontendPort: '443'
          protocol: 'Tcp'
          backendPort: '443'
          disableOutboundSnat: true
          enableFloatingIP: false
          enableTcpReset: false
          idleTimeoutInMinutes: 5
          loadDistribution: 'Default'
          backendAddressPool: {
            id: resourceId('Microsoft.Network/loadbalancers/backendAddressPools', 'cn-hb3-uat-pfl-lb-01', 'azrhb3pfappwu')
          }
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/loadbalancers/frontendIpConfigurations', 'cn-hb3-uat-pfl-lb-01', 'feip-private-02')
          }
          probe: {
            id: resourceId('Microsoft.Network/loadBalancers/probes', 'cn-hb3-uat-pfl-lb-01', 'https-443')
          }
        }
      }    
    ]
  }
}


resource pip 'Microsoft.Network/publicIPAddresses@2023-02-01' = {
  name: 'cn-hb3-hub-npd-mgt-ext-agw-pip-01'
  location: 'chinanorth3'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  zones: [
    '1'
    '2'
    '3'
  ]
}


resource appGateway 'Microsoft.Network/applicationGateways@2023-02-01' = {
  name: 'cn-hb3-hub-npd-mgt-ext-agw'
  location: 'chinanorth3'
  zones: [
    '1'
    '2'
    '3'
  ]
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    enableHttp2: true
    autoscaleConfiguration: {
      minCapacity: 2
      maxCapacity: 10
    
    }
    backendAddressPools: [
      {
        name: 'azrhb3pfwebwu'
        properties: {
          backendAddresses: [
            '10.199.250.196'
            '10.199.250.197'
          ]
        }
      }
      {
        name: 'azrhb3pfappwu'
        properties: {
          backendAddresses: [
            '10.199.250.198'
            '10.199.250.199'
          ]
        }
      }
    ]
    backendHttpSettingsCollection: [
      {
        name: 'https_443'
        properties: {
          pickHostNameFromBackendAddress: true
          port: '443'
          probeEnabled: false
          protocol: 'Https'
          requestTimeout: 300
        }
      }
    ]
    frontendIPConfigurations: [
      {
        name: 'feip-public-01'
        properties: {
          publicIPAddress: pip.id
        }
      }
    ]
  }
}
