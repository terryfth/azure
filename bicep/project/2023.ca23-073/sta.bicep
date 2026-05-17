resource storageaccounts1 'Microsoft.Storage/storageAccounts@2023-01-01' = {  
  name: 'apsitanaplanotbsta01'
  location: 'eastasia'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: false
    allowCrossTenantReplication: false
    allowSharedKeyAccess: true
    defaultToOAuthAuthentication: false
    dnsEndpointType: 'Standard'
    minimumTlsVersion: 'TLS1_2'
    publicNetworkAccess: 'Enabled'
    supportsHttpsTrafficOnly: true
    encryption: {
      keySource: 'Microsoft.Storage'
      requireInfrastructureEncryption: true
      services: {
        blob: {
          enabled: true
        }
        file: {
          enabled: true
        }
        queue: {
          enabled: true
        }
      }
    }
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Deny'
      ipRules: [
        { 
          action: 'Allow'
          value: '165.225.116.0/23'
        }
        {
          action: 'Allow'
          value: '165.225.234.0/23'
        }
        { 
          action: 'Allow'
          value: '64.124.186.246'
        }
        {
          action: 'Allow'
          value: '8.47.83.246'
        }          
        {
          action: 'Allow'
          value: '94.31.44.4'
        }  
        {
          action: 'Allow'
          value: '212.119.8.246'
        }
        {
          action: 'Allow'
          value: '195.122.182.10'
        }
        {
          action: 'Allow'
          value: '165.254.21.74'
        }
        {
          action: 'Allow'
          value: '195.12.254.113'
        }
        {
          action: 'Allow'
          value: '83.231.153.246'
        }
      ]
    }    
  }
}
