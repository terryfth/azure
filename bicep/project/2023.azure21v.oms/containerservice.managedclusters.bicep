param location string = resourceGroup().location

resource aks 'Microsoft.ContainerService/managedClusters@2023-05-02-preview' = {
  name: 'poc-aks-terry-01'
  location: location
  tags: {
    environment: 'poc'
  }  
  sku: {
    name: 'Base'
    tier: 'Standard'
  }
  /*
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  */
  identity: {
    type: 'SystemAssigned'
  //userAssignedIdentities: {}
  }
  
  properties: {
    
    aadProfile: {
      adminGroupObjectIDs: [
        '550000e1-b027-4dfd-b4ba-5853adc241be'
      ]    
      enableAzureRBAC: false      
      managed: true      
    }
    /*
    addonProfiles: {}
    */
    agentPoolProfiles: [      
      {        
        availabilityZones: [
          '1'
          '2'
          '3'
        ]
      //capacityReservationGroupID: 'string'        
        count: 3
        /*
        creationData: {
          sourceResourceId: 'string'
        }
        */
        enableAutoScaling: true
        /*
        enableCustomCATrust: bool
        enableEncryptionAtHost: bool
        enableFIPS: bool
        */
        enableNodePublicIP: false
        /*
        enableUltraSSD: bool
        gpuInstanceProfile: 'string'
        hostGroupID: 'string'
        kubeletConfig: {
          allowedUnsafeSysctls: [
            'string'
          ]
          containerLogMaxFiles: int
          containerLogMaxSizeMB: int
          cpuCfsQuota: bool
          cpuCfsQuotaPeriod: 'string'
          cpuManagerPolicy: 'string'
          failSwapOn: bool
          imageGcHighThreshold: int
          imageGcLowThreshold: int
          podMaxPids: int
          topologyManagerPolicy: 'string'
        }
        kubeletDiskType: 'string'
        linuxOSConfig: {
          swapFileSizeMB: int
          sysctls: {
            fsAioMaxNr: int
            fsFileMax: int
            fsInotifyMaxUserWatches: int
            fsNrOpen: int
            kernelThreadsMax: int
            netCoreNetdevMaxBacklog: int
            netCoreOptmemMax: int
            netCoreRmemDefault: int
            netCoreRmemMax: int
            netCoreSomaxconn: int
            netCoreWmemDefault: int
            netCoreWmemMax: int
            netIpv4IpLocalPortRange: 'string'
            netIpv4NeighDefaultGcThresh1: int
            netIpv4NeighDefaultGcThresh2: int
            netIpv4NeighDefaultGcThresh3: int
            netIpv4TcpFinTimeout: int
            netIpv4TcpkeepaliveIntvl: int
            netIpv4TcpKeepaliveProbes: int
            netIpv4TcpKeepaliveTime: int
            netIpv4TcpMaxSynBacklog: int
            netIpv4TcpMaxTwBuckets: int
            netIpv4TcpTwReuse: bool
            netNetfilterNfConntrackBuckets: int
            netNetfilterNfConntrackMax: int
            vmMaxMapCount: int
            vmSwappiness: int
            vmVfsCachePressure: int
          }
          transparentHugePageDefrag: 'string'
          transparentHugePageEnabled: 'string'
        }
        */
        maxCount: 3
        maxPods: 30
      //messageOfTheDay: 'string'
        minCount: 3
        mode: 'System'        
        name: 'slp01'
        /*
        networkProfile: {
          allowedHostPorts: [
            {
              portEnd: int
              portStart: int
              protocol: 'string'
            }
          ]
          applicationSecurityGroups: [
            'string'
          ]
          nodePublicIPTags: [
            {
              ipTagType: 'string'
              tag: 'string'
            }
          ]
        }
        nodeLabels: {}
        nodePublicIPPrefixID: 'string'
        nodeTaints: [
          'string'
        ]
        */
        orchestratorVersion: '1.27.3'
        /*
        osDiskSizeGB: int
        osDiskType: 'string'
        osSKU: 'string'
        */
        osType: 'Linux'
        /*
        podSubnetID: 'string'
        powerState: {
          code: 'string'
        }
        proximityPlacementGroupID: 'string'
        scaleDownMode: 'string'
        scaleSetEvictionPolicy: 'string'
        scaleSetPriority: 'string'
        spotMaxPrice: json('decimal-as-string')
        tags: {}
        */
        type: 'VirtualMachineScaleSets'
        /*
        upgradeSettings: {
          maxSurge: 'string'
        }
        */
        vmSize: 'standard_b2s'        
        vnetSubnetID: '/subscriptions/13b900bf-01eb-4789-874e-51b339d6bbe5/resourceGroups/poc-rg-terry/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-01/subnets/poc-sbn-terry-aks-01'
        /*
        windowsProfile: {
          disableOutboundNat: bool
        }
        workloadRuntime: 'string'
        */
      }      
    ]    
    
    apiServerAccessProfile: {
      authorizedIPRanges: [
        '165.225.116.0/23'
        '165.226.228.0/23'
      ]
    //disableRunCommand: bool
      enablePrivateCluster: false
      /*
      enablePrivateClusterPublicFQDN: bool
      enableVnetIntegration: bool
      privateDNSZone: 'string'
      subnetId: 'string'
      */
    }
    /*
    autoScalerProfile: {
      'balance-similar-node-groups': 'string'
      expander: 'string'
      'max-empty-bulk-delete': 'string'
      'max-graceful-termination-sec': 'string'
      'max-node-provision-time': 'string'
      'max-total-unready-percentage': 'string'
      'new-pod-scale-up-delay': 'string'
      'ok-total-unready-count': 'string'
      'scale-down-delay-after-add': 'string'
      'scale-down-delay-after-delete': 'string'
      'scale-down-delay-after-failure': 'string'
      'scale-down-unneeded-time': 'string'
      'scale-down-unready-time': 'string'
      'scale-down-utilization-threshold': 'string'
      'scan-interval': 'string'
      'skip-nodes-with-local-storage': 'string'
      'skip-nodes-with-system-pods': 'string'
    }
    */
    autoUpgradeProfile: {
    //nodeOSUpgradeChannel: 'string'
      upgradeChannel: 'patch'
    }
    /*
    azureMonitorProfile: {
      metrics: {
        enabled: bool
        kubeStateMetrics: {
          metricAnnotationsAllowList: 'string'
          metricLabelsAllowlist: 'string'
        }
      }
    }
    creationData: {
      sourceResourceId: 'string'
    }
    */
    disableLocalAccounts: true
  //diskEncryptionSetID: 'string'    
    dnsPrefix: 'poc-aks-terry-01'
    /*
    enableNamespaceResources: bool
    enablePodSecurityPolicy: bool
    */
    enableRBAC: true
    /*
    fqdnSubdomain: 'string'
    guardrailsProfile: {
      excludedNamespaces: [
        'string'
      ]
      level: 'string'
      version: 'string'
    }
    httpProxyConfig: {
      httpProxy: 'string'
      httpsProxy: 'string'
      noProxy: [
        'string'
      ]
      trustedCa: 'string'
    }
    identityProfile: {}
    ingressProfile: {
      webAppRouting: {
        dnsZoneResourceId: 'string'
        enabled: bool
      }
    }
    */
    kubernetesVersion: '1.27.3'
    /*
    linuxProfile: {
      adminUsername: 'string'
      ssh: {
        publicKeys: [
          {
            keyData: 'string'
          }
        ]
      }
    }
    */
    networkProfile: {
      dnsServiceIP: '172.12.0.2'
      /*
      ipFamilies: [
        'string'
      ]
      kubeProxyConfig: {
        enabled: bool
        ipvsConfig: {
          scheduler: 'string'
          tcpFinTimeoutSeconds: int
          tcpTimeoutSeconds: int
          udpTimeoutSeconds: int
        }
        mode: 'string'
      }      
      loadBalancerProfile: {
        allocatedOutboundPorts: int
        backendPoolType: 'string'
        effectiveOutboundIPs: [
          {
            id: 'string'
          }
        ]
        enableMultipleStandardLoadBalancers: bool
        idleTimeoutInMinutes: int
        managedOutboundIPs: {
          count: int
          countIPv6: int
        }
        outboundIPPrefixes: {
          publicIPPrefixes: [
            {
              id: 'string'
            }
          ]
        }
        outboundIPs: {
          publicIPs: [
            {
              id: 'string'
            }
          ]
        }
      }
      */
      loadBalancerSku: 'standard'
      /*
      monitoring: {
        enabled: bool
      }
      natGatewayProfile: {
        effectiveOutboundIPs: [
          {
            id: 'string'
          }
        ]
        idleTimeoutInMinutes: int
        managedOutboundIPProfile: {
          count: int
        }
      }      
      networkDataplane: 'string'
      networkMode: 'string'
      */
      networkPlugin: 'azure'
    //networkPluginMode: 'overlay'
      networkPolicy: 'calico'            
      outboundType: 'userAssignedNatGateway'            
      /*
      podCidr: 'string'
      podCidrs: [
        'string'
      ]
      */
      serviceCidr: '172.12.0.0/22'
      /*
      serviceCidrs: [
        'string'
      ]
      */
    }    
    nodeResourceGroup: 'poc-rg-terry-aks'
    /*
    nodeResourceGroupProfile: {
      restrictionLevel: 'string'
    }
    oidcIssuerProfile: {
      enabled: bool
    }
    podIdentityProfile: {
      allowNetworkPluginKubenet: bool
      enabled: bool
      userAssignedIdentities: [
        {
          bindingSelector: 'string'
          identity: {
            clientId: 'string'
            objectId: 'string'
            resourceId: 'string'
          }
          name: 'string'
          namespace: 'string'
        }
      ]
      userAssignedIdentityExceptions: [
        {
          name: 'string'
          namespace: 'string'
          podLabels: {}
        }
      ]
    }
    privateLinkResources: [
      {
        groupId: 'string'
        id: 'string'
        name: 'string'
        requiredMembers: [
          'string'
        ]
        type: 'string'
      }
    ]
    publicNetworkAccess: 'string'
    securityProfile: {
      azureKeyVaultKms: {
        enabled: bool
        keyId: 'string'
        keyVaultNetworkAccess: 'string'
        keyVaultResourceId: 'string'
      }
      customCATrustCertificates: [
        any
      ]
      defender: {
        logAnalyticsWorkspaceResourceId: 'string'
        securityMonitoring: {
          enabled: bool
        }
      }
      imageCleaner: {
        enabled: bool
        intervalHours: int
      }
      nodeRestriction: {
        enabled: bool
      }
      workloadIdentity: {
        enabled: bool
      }
    }
    serviceMeshProfile: {
      istio: {
        components: {
          ingressGateways: [
            {
              enabled: bool
              mode: 'string'
            }
          ]
        }
      }
      mode: 'string'
    }
    */
    servicePrincipalProfile: {
      clientId: 'msi'
    //secret: 'string'
    }    
    storageProfile: {
      blobCSIDriver: {
        enabled: true
      }
      diskCSIDriver: {
        enabled: true
        version: 'string'
      }
      /*
      fileCSIDriver: {
        enabled: bool
      }
      snapshotController: {
        enabled: bool      
      }
      */
    }
    /*
    supportPlan: 'string'
    upgradeSettings: {
      overrideSettings: {
        controlPlaneOverrides: 'IgnoreKubernetesDeprecations'
        until: 'string'
      }
    }
    workloadAutoScalerProfile: {
      keda: {
        enabled: bool
      }
      verticalPodAutoscaler: {
        controlledValues: 'string'
        enabled: bool
        updateMode: 'string'
      }
    }
    */
  }  
}
