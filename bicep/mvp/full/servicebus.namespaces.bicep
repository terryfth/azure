resource sbns1 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name: 'poc-sbns-terry-01'
  location: 'eastasia'
/*
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
*/
  sku: {
    capacity: 1
    name: 'Premium'
    tier: 'Premium'
  }
/*
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
*/
  properties: {
//  alternateName: 'string'
//  disableLocalAuth: bool
/*
    encryption: {
      keySource: 'Microsoft.KeyVault'
      keyVaultProperties: [
        {
          identity: {
            userAssignedIdentity: 'string'
          }
          keyName: 'string'
          keyVaultUri: 'string'
          keyVersion: 'string'
        }
      ]
      requireInfrastructureEncryption: true
    }
*/
    minimumTlsVersion: '1.2'
/*
    premiumMessagingPartitions: int
    privateEndpointConnections: [
      {
        properties: {
          privateEndpoint: {
            id: 'string'
          }
          privateLinkServiceConnectionState: {
            description: 'string'
            status: 'string'
          }
          provisioningState: 'string'
        }
      }
    ]
*/
    publicNetworkAccess: 'Disabled'
    zoneRedundant: true
  }
}
