resource symbolicname 'Microsoft.Network/networkWatchers/packetCaptures@2023-02-01' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    bytesToCapturePerPacket: int
    filters: [
      {
        localIPAddress: 'string'
        localPort: 'string'
        protocol: 'string'
        remoteIPAddress: 'string'
        remotePort: 'string'
      }
    ]
    scope: {
      exclude: [
        'string'
      ]
      include: [
        'string'
      ]
    }
    storageLocation: {
      filePath: 'string'
      storageId: 'string'
      storagePath: 'string'
    }
    target: 'string'
    targetType: 'string'
    timeLimitInSeconds: int
    totalBytesPerSession: int
  }
}