resource symbolicname 'Microsoft.ContainerService/managedClusters/agentPools@2023-03-02-preview' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    availabilityZones: [
      'string'
    ]
    capacityReservationGroupID: 'string'
    count: int
    creationData: {
      sourceResourceId: 'string'
    }
    enableAutoScaling: bool
    enableCustomCATrust: bool
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
    messageOfTheDay: 'string'
    minCount: int
    mode: 'string'
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
    spotMaxPrice: int
    tags: {}
    type: 'string'
    upgradeSettings: {
      maxSurge: 'string'
    }
    vmSize: 'string'
    vnetSubnetID: 'string'
    windowsProfile: {
      disableOutboundNat: bool
    }
    workloadRuntime: 'string'
  }
}