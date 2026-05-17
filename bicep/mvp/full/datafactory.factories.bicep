resource adf 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: 'poc-adf-terry-02'
  location: 'eastasia'
  tags: {
    environment: 'poc'
  }
  /*
  identity: {
    type: 'SystemAssigned'
//  userAssignedIdentities: {}
  }
  */
  /*
  properties: {
    publicNetworkAccess: 'Enabled'
//  globalParameters: {}
*/
/*
    encryption: {
      identity: {
        userAssignedIdentity: 'string'
      }
      keyName: 'string'
      keyVersion: 'string'
      vaultBaseUrl: 'string'
    }
    purviewConfiguration: {
      purviewResourceId: 'string'
    }
    repoConfiguration: {
      accountName: 'string'
      collaborationBranch: 'string'
      disablePublish: bool
      lastCommitId: 'string'
      repositoryName: 'string'
      rootFolder: 'string'
      type: 'string'
    }

  }
  */
}
