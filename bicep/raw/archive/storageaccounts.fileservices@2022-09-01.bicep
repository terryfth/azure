resource symbolicname 'Microsoft.Storage/storageAccounts/fileServices@2022-09-01' = {
  name: 'default'
  parent: resourceSymbolicName
  properties: {
    cors: {
      corsRules: [
        {
          allowedHeaders: [
            'string'
          ]
          allowedMethods: [
            'string'
          ]
          allowedOrigins: [
            'string'
          ]
          exposedHeaders: [
            'string'
          ]
          maxAgeInSeconds: int
        }
      ]
    }
    protocolSettings: {
      smb: {
        authenticationMethods: 'string'
        channelEncryption: 'string'
        kerberosTicketEncryption: 'string'
        multichannel: {
          enabled: bool
        }
        versions: 'string'
      }
    }
    shareDeleteRetentionPolicy: {
      allowPermanentDelete: bool
      days: int
      enabled: bool
    }
  }
}