resource symbolicname 'Microsoft.ContainerService/managedClusters@2023-11-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'Base'
    tier: 'string'
  }
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  identity: {
    delegatedResources: {
      {customized property}: {
        location: 'string'
        referralResource: 'string'
        resourceId: 'string'
        tenantId: 'string'
      }
    }
    type: 'string'
    userAssignedIdentities: {
      {customized property}: {}
    }
  }
  properties: {
    aadProfile: {
      adminGroupObjectIDs: [
        'string'
      ]
      clientAppID: 'string'
      enableAzureRBAC: bool
      managed: bool
      serverAppID: 'string'
      serverAppSecret: 'string'
      tenantID: 'string'
    }
    addonProfiles: {
      {customized property}: {
        config: {
          {customized property}: 'string'
        }
        enabled: bool
      }
    }
    agentPoolProfiles: [
      {
        availabilityZones: [
          'string'
        ]
        capacityReservationGroupID: 'string'
        count: int
        creationData: {
          sourceResourceId: 'string'
        }
        enableAutoScaling: bool
        enableEncryptionAtHost: bool
        enableFIPS: bool
        enableNodePublicIP: bool
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
        maxCount: int
        maxPods: int
        minCount: int
        mode: 'string'
        name: 'string'
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
        nodeLabels: {
          {customized property}: 'string'
          {customized property}: 'string'
        }
        nodePublicIPPrefixID: 'string'
        nodeTaints: [
          'string'
        ]
        orchestratorVersion: 'string'
        osDiskSizeGB: int
        osDiskType: 'string'
        osSKU: 'string'
        osType: 'string'
        podSubnetID: 'string'
        powerState: {
          code: 'string'
        }
        proximityPlacementGroupID: 'string'
        scaleDownMode: 'string'
        scaleSetEvictionPolicy: 'string'
        scaleSetPriority: 'string'
        spotMaxPrice: json('decimal-as-string')
        tags: {
          {customized property}: 'string'
          {customized property}: 'string'
        }
        type: 'string'
        upgradeSettings: {
          drainTimeoutInMinutes: int
          maxSurge: 'string'
          nodeSoakDurationInMinutes: int
        }
        vmSize: 'string'
        vnetSubnetID: 'string'
        workloadRuntime: 'string'
      }
    ]
    apiServerAccessProfile: {
      authorizedIPRanges: [
        'string'
      ]
      disableRunCommand: bool
      enablePrivateCluster: bool
      enablePrivateClusterPublicFQDN: bool
      privateDNSZone: 'string'
    }
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
    autoUpgradeProfile: {
      nodeOSUpgradeChannel: 'string'
      upgradeChannel: 'string'
    }
    azureMonitorProfile: {
      metrics: {
        enabled: bool
        kubeStateMetrics: {
          metricAnnotationsAllowList: 'string'
          metricLabelsAllowlist: 'string'
        }
      }
    }
    disableLocalAccounts: bool
    diskEncryptionSetID: 'string'
    dnsPrefix: 'string'
    enablePodSecurityPolicy: bool
    enableRBAC: bool
    fqdnSubdomain: 'string'
    httpProxyConfig: {
      httpProxy: 'string'
      httpsProxy: 'string'
      noProxy: [
        'string'
      ]
      trustedCa: 'string'
    }
    identityProfile: {
      {customized property}: {
        clientId: 'string'
        objectId: 'string'
        resourceId: 'string'
      }
    }
    kubernetesVersion: 'string'
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
    networkProfile: {
      dnsServiceIP: 'string'
      ipFamilies: [
        'string'
      ]
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
      loadBalancerSku: 'string'
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
      networkPlugin: 'string'
      networkPluginMode: 'overlay'
      networkPolicy: 'string'
      outboundType: 'string'
      podCidr: 'string'
      podCidrs: [
        'string'
      ]
      serviceCidr: 'string'
      serviceCidrs: [
        'string'
      ]
    }
    nodeResourceGroup: 'string'
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
          podLabels: {
            {customized property}: 'string'
          }
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
      workloadIdentity: {
        enabled: bool
      }
    }
    serviceMeshProfile: {
      istio: {
        certificateAuthority: {
          plugin: {
            certChainObjectName: 'string'
            certObjectName: 'string'
            keyObjectName: 'string'
            keyVaultId: 'string'
            rootCertObjectName: 'string'
          }
        }
        components: {
          egressGateways: [
            {
              enabled: bool
              nodeSelector: {
                {customized property}: 'string'
              }
            }
          ]
          ingressGateways: [
            {
              enabled: bool
              mode: 'string'
            }
          ]
        }
        revisions: [
          'string'
        ]
      }
      mode: 'string'
    }
    servicePrincipalProfile: {
      clientId: 'string'
      secret: 'string'
    }
    storageProfile: {
      blobCSIDriver: {
        enabled: bool
      }
      diskCSIDriver: {
        enabled: bool
      }
      fileCSIDriver: {
        enabled: bool
      }
      snapshotController: {
        enabled: bool
      }
    }
    supportPlan: 'string'
    upgradeSettings: {
      overrideSettings: {
        forceUpgrade: bool
        until: 'string'
      }
    }
    windowsProfile: {
      adminPassword: 'string'
      adminUsername: 'string'
      enableCSIProxy: bool
      gmsaProfile: {
        dnsServer: 'string'
        enabled: bool
        rootDomainName: 'string'
      }
      licenseType: 'string'
    }
    workloadAutoScalerProfile: {
      keda: {
        enabled: bool
      }
      verticalPodAutoscaler: {
        enabled: bool
      }
    }
  }
}