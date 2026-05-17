resource symbolicname 'Microsoft.KeyVault/vaults/accessPolicies@2022-07-01' = {
  name: 'poc-akv-terry-04/add'
//parent: resourceSymbolicName
  properties: {
    accessPolicies: [
      {
      //applicationId: 'string'
        objectId: '6398e7c9-c53a-47fd-beee-609c0db15e81'
        permissions: {
          certificates: [
            'list'
            'get'
          ]
          keys: [
            'list'
            'get'
          ]
          secrets: [
            'list'
            'get'
          ]
        }
      tenantId: 'e6cbec2f-2f23-43ca-82c4-51a7c9b71e7a'
      }
    ]
  }
}
