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
  tags: {
    environment: 'poc'    
  }
  /*
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  */  
  properties: {
    /*
    authenticationCertificates: [
      {
        id: 'string'
        name: 'string'
        properties: {
          data: 'string'
        }
      }
    ]    
    autoscaleConfiguration: {
      maxCapacity: int
      minCapacity: int
    }
    */    
    backendAddressPools: [
      {
      //id: 'string'
        name: backendAddressPoolName
        properties: {
          backendAddresses: [
            {
            //fqdn: 'string'
              ipAddress: '10.0.1.1'
            }
          ]
        }
      }
    ]    
    backendHttpSettingsCollection: [
      {
      //id: 'string'
        name: 'http_80'
        properties: {
          /*
          affinityCookieName: 'string'
          authenticationCertificates: [
            {
              id: 'string'
            }
          ]
          connectionDraining: {
            drainTimeoutInSec: int
            enabled: bool
          }
          */
        //cookieBasedAffinity: 'string'
        //hostName: 'string'
        //path: 'string'
        //pickHostNameFromBackendAddress: bool
          port: 80
          /*
          probe: {
            id: 'string'
          }
          */
        //probeEnabled: bool
          protocol: 'http'
        //requestTimeout: int
          /*
          trustedRootCertificates: [
            {
              id: 'string'
            }
          ]
          */
        }
      }
    ]
    /*
    backendSettingsCollection: [
      {
        id: 'string'
        name: 'string'
        properties: {
          hostName: 'string'
          pickHostNameFromBackendAddress: bool
          port: int
          probe: {
            id: 'string'
          }
          protocol: 'string'
          timeout: int
          trustedRootCertificates: [
            {
              id: 'string'
            }
          ]
        }
      }
    ]
    customErrorConfigurations: [
      {
        customErrorPageUrl: 'string'
        statusCode: 'string'
      }
    ]
    enableFips: bool
    enableHttp2: bool
    firewallPolicy: {
      id: 'string'
    }
    forceFirewallPolicyAssociation: bool
    */
    frontendIPConfigurations: [
      {
        //id: 'string'
        name: frontendIpName
        properties: {
        //privateIPAddress: 'string'
        //privateIPAllocationMethod: 'Dynamic'
          /*
          privateLinkConfiguration: {
            id: 'string'
          }
          */
          publicIPAddress: {
            id: resourceId('Microsoft.Network/publicIPAddresses', 'poc-pip-terry-01')
          }
          /*
            id: 'string'
          }
          */
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
    ]    
    gatewayIPConfigurations: [
      {
      //id: 'string'
        name: 'gatewayIpConfig1'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', 'poc-vnt-terry-01', 'poc-sbn-agw')
          }
        }
      }
    ]
    /*
    globalConfiguration: {
      enableRequestBuffering: bool
      enableResponseBuffering: bool
    }
    */
    httpListeners: [
      {
      //id: 'string'
        name: httpListenersName
        properties: {
          /*
          customErrorConfigurations: [
            {
              customErrorPageUrl: 'string'
              statusCode: 'string'
            }
          ]
          firewallPolicy: {
            id: 'string'
          }
          */
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', agwName, frontendIpName)
          }
          frontendPort: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts', agwName, frontendPortName)
          }
          /*
          hostName: 'string'
          hostNames: [
            'string'
          ]
          protocol: 'string'
          requireServerNameIndication: bool   
          sslCertificate: {
            id: 'string'
          }
          sslProfile: {
            id: 'string'
          }
          */
        }
      }
    ]
    /*
    listeners: [
      {
        id: 'string'
        name: 'string'
        properties: {
          frontendIPConfiguration: {
            id: 'string'
          }
          frontendPort: {
            id: 'string'
          }
          protocol: 'string'
          sslCertificate: {
            id: 'string'
          }
          sslProfile: {
            id: 'string'
          }
        }
      }
    ]
    */
    /*
    loadDistributionPolicies: [
      {
        id: 'string'
        name: 'string'
        properties: {
          loadDistributionAlgorithm: 'string'
          loadDistributionTargets: [
            {
              id: 'string'
              name: 'string'
              properties: {
                backendAddressPool: {
                  id: 'string'
                }
                weightPerServer: int
              }
            }
          ]
        }
      }
    ]
    privateLinkConfigurations: [
      {
        id: 'string'
        name: 'string'
        properties: {
          ipConfigurations: [
            {
              id: 'string'
              name: 'string'
              properties: {
                primary: bool
                privateIPAddress: 'string'
                privateIPAllocationMethod: 'string'
                subnet: {
                  id: 'string'
                }
              }
            }
          ]
        }
      }
    ]
    probes: [
      {
        id: 'string'
        name: 'string'
        properties: {
          host: 'string'
          interval: int
          match: {
            body: 'string'
            statusCodes: [
              'string'
            ]
          }
          minServers: int
          path: 'string'
          pickHostNameFromBackendHttpSettings: bool
          pickHostNameFromBackendSettings: bool
          port: int
          protocol: 'string'
          timeout: int
          unhealthyThreshold: int
        }
      }
    ]
    redirectConfigurations: [
      {
        id: 'string'
        name: 'string'
        properties: {
          includePath: bool
          includeQueryString: bool
          pathRules: [
            {
              id: 'string'
            }
          ]
          redirectType: 'string'
          requestRoutingRules: [
            {
              id: 'string'
            }
          ]
          targetListener: {
            id: 'string'
          }
          targetUrl: 'string'
          urlPathMaps: [
            {
              id: 'string'
            }
          ]
        }
      }
    ]
    */
    requestRoutingRules: [
      {
      //id: 'string'
        name: 'requestRoutingRule01'
        properties: {
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', agwName, backendAddressPoolName)
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', agwName, backendHttpSettingsCollectionName)
          }
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', agwName, httpListenersName)
          }
          /*
          loadDistributionPolicy: {
            id: 'string'
          }
          */
          priority: 10
          /*
          redirectConfiguration: {
            id: 'string'
          }
          rewriteRuleSet: {
            id: 'string'
          }
          */
          ruleType: 'basic'
          /*
          urlPathMap: {
            id: 'string'
          }
          */
        }
      }
    ]
    /*
    rewriteRuleSets: [
      {
        id: 'string'
        name: 'string'
        properties: {
          rewriteRules: [
            {
              actionSet: {
                requestHeaderConfigurations: [
                  {
                    headerName: 'string'
                    headerValue: 'string'
                  }
                ]
                responseHeaderConfigurations: [
                  {
                    headerName: 'string'
                    headerValue: 'string'
                  }
                ]
                urlConfiguration: {
                  modifiedPath: 'string'
                  modifiedQueryString: 'string'
                  reroute: bool
                }
              }
              conditions: [
                {
                  ignoreCase: bool
                  negate: bool
                  pattern: 'string'
                  variable: 'string'
                }
              ]
              name: 'string'
              ruleSequence: int
            }
          ]
        }
      }
    ]
    routingRules: [
      {
        id: 'string'
        name: 'string'
        properties: {
          backendAddressPool: {
            id: 'string'
          }
          backendSettings: {
            id: 'string'
          }
          listener: {
            id: 'string'
          }
          priority: int
          ruleType: 'string'
        }
      }
    ]
    */
    sku: {
      capacity: 1
      name: 'Standard_v2'
      tier: 'Standard_v2'
    }
    /*
    sslCertificates: [
      {
        id: 'string'
        name: 'string'
        properties: {
          data: 'string'
          keyVaultSecretId: 'string'
          password: 'string'
        }
      }
    ]
    sslPolicy: {
      cipherSuites: [
        'string'
      ]
      disabledSslProtocols: [
        'string'
      ]
      minProtocolVersion: 'string'
      policyName: 'string'
      policyType: 'string'
    }
    sslProfiles: [
      {
        id: 'string'
        name: 'string'
        properties: {
          clientAuthConfiguration: {
            verifyClientCertIssuerDN: bool
            verifyClientRevocation: 'string'
          }
          sslPolicy: {
            cipherSuites: [
              'string'
            ]
            disabledSslProtocols: [
              'string'
            ]
            minProtocolVersion: 'string'
            policyName: 'string'
            policyType: 'string'
          }
          trustedClientCertificates: [
            {
              id: 'string'
            }
          ]
        }
      }
    ]
    trustedClientCertificates: [
      {
        id: 'string'
        name: 'string'
        properties: {
          data: 'string'
        }
      }
    ]
    trustedRootCertificates: [
      {
        id: 'string'
        name: 'string'
        properties: {
          data: 'string'
          keyVaultSecretId: 'string'
        }
      }
    ]
    urlPathMaps: [
      {
        id: 'string'
        name: 'string'
        properties: {
          defaultBackendAddressPool: {
            id: 'string'
          }
          defaultBackendHttpSettings: {
            id: 'string'
          }
          defaultLoadDistributionPolicy: {
            id: 'string'
          }
          defaultRedirectConfiguration: {
            id: 'string'
          }
          defaultRewriteRuleSet: {
            id: 'string'
          }
          pathRules: [
            {
              id: 'string'
              name: 'string'
              properties: {
                backendAddressPool: {
                  id: 'string'
                }
                backendHttpSettings: {
                  id: 'string'
                }
                firewallPolicy: {
                  id: 'string'
                }
                loadDistributionPolicy: {
                  id: 'string'
                }
                paths: [
                  'string'
                ]
                redirectConfiguration: {
                  id: 'string'
                }
                rewriteRuleSet: {
                  id: 'string'
                }
              }
            }
          ]
        }
      }
    ]
    webApplicationFirewallConfiguration: {
      disabledRuleGroups: [
        {
          ruleGroupName: 'string'
          rules: [
            int
          ]
        }
      ]
      enabled: bool
      exclusions: [
        {
          matchVariable: 'string'
          selector: 'string'
          selectorMatchOperator: 'string'
        }
      ]
      fileUploadLimitInMb: int
      firewallMode: 'string'
      maxRequestBodySize: int
      maxRequestBodySizeInKb: int
      requestBodyCheck: bool
      ruleSetType: 'string'
      ruleSetVersion: 'string'
    }
    */
  }
  /*
  zones: [
    'string'
  ]
  */
  dependsOn: [
    vnet
    pip
  ]
}


resource vnet 'Microsoft.Network/virtualNetworks@2023-02-01' = {
  name: 'poc-vnt-terry-01'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'poc-sbn-agw'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}




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
  }
  zones: [
    '1'
    '2'
    '3'
  ]
}
