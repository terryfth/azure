resource symbolicname 'Microsoft.Network/privateDnsZones/A@2020-06-01' = {
  name: 'string'
  parent: resourceSymbolicName
  etag: 'string'
  properties: {
    aaaaRecords: [
      {
        ipv6Address: 'string'
      }
    ]
    aRecords: [
      {
        ipv4Address: 'string'
      }
    ]
    cnameRecord: {
      cname: 'string'
    }
    metadata: {}
    mxRecords: [
      {
        exchange: 'string'
        preference: int
      }
    ]
    ptrRecords: [
      {
        ptrdname: 'string'
      }
    ]
    soaRecord: {
      email: 'string'
      expireTime: int
      host: 'string'
      minimumTtl: int
      refreshTime: int
      retryTime: int
      serialNumber: int
    }
    srvRecords: [
      {
        port: int
        priority: int
        target: 'string'
        weight: int
      }
    ]
    ttl: int
    txtRecords: [
      {
        value: [
          'string'
        ]
      }
    ]
  }
}