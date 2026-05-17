param location string = resourceGroup().location

resource symbolicname 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: 'poc-sqs-terry-1'
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
    administratorLogin: 'sqldba'
    administratorLoginPassword: 'ecika@chooShie9cuthe'
    /*
    administrators: {
      administratorType: 'ActiveDirectory'
      azureADOnlyAuthentication: bool
      login: 'string'
      principalType: 'string'
      sid: 'string'
      tenantId: 'string'
    }
    federatedClientId: 'string'
    keyId: 'string'
    minimalTlsVersion: 'string'
    primaryUserAssignedIdentityId: 'string'
    publicNetworkAccess: 'string'
    restrictOutboundNetworkAccess: 'string'
    version: 'string'
    */
  }  
}
