param location string = resourceGroup().location

resource symbolicname 'Microsoft.Automation/automationAccounts@2022-08-08' = {
  name: 'poc-ata-terry-mvp-01'
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
    /*
    disableLocalAuth: bool
    encryption: {
      identity: {
        userAssignedIdentity: any()
      }
      keySource: 'string'
      keyVaultProperties: {
        keyName: 'string'
        keyvaultUri: 'string'
        keyVersion: 'string'
      }
    }
    publicNetworkAccess: bool
    */
    sku: {
    //capacity: int
    //family: 'string'
      name: 'Free'      
    }    
  }  
}
