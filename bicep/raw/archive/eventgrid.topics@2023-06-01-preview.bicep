resource symbolicname 'Microsoft.EventGrid/topics@2023-06-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'string'
  }
  kind: 'string'
  extendedLocation: {
    name: 'string'
    type: 'string'
  }
  identity: {
    principalId: 'string'
    tenantId: 'string'
    type: 'string'
    userAssignedIdentities: {}
  }
  properties: {
    dataResidencyBoundary: 'string'
    disableLocalAuth: bool
    eventTypeInfo: {
      inlineEventTypes: {}
      kind: 'Inline'
    }
    inboundIpRules: [
      {
        action: 'Allow'
        ipMask: 'string'
      }
    ]
    inputSchema: 'string'
    inputSchemaMapping: {
      inputSchemaMappingType: 'string'
      // For remaining properties, see InputSchemaMapping objects
    }
    minimumTlsVersionAllowed: 'string'
    publicNetworkAccess: 'string'
  }
}