resource symbolicname 'Microsoft.Compute/images@2022-11-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  properties: {
    hyperVGeneration: 'string'
    sourceVirtualMachine: {
      id: 'string'
    }
    storageProfile: {
      dataDisks: [
        {
          blobUri: 'string'
          caching: 'string'
          diskEncryptionSet: {
            id: 'string'
          }
          diskSizeGB: int
          lun: int
          managedDisk: {
            id: 'string'
          }
          snapshot: {
            id: 'string'
          }
          storageAccountType: 'string'
        }
      ]
      osDisk: {
        blobUri: 'string'
        caching: 'string'
        diskEncryptionSet: {
          id: 'string'
        }
        diskSizeGB: int
        managedDisk: {
          id: 'string'
        }
        osState: 'string'
        osType: 'string'
        snapshot: {
          id: 'string'
        }
        storageAccountType: 'string'
      }
      zoneResilient: bool
    }
  }
}