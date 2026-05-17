resource symbolicname 'Microsoft.ServiceBus/namespaces/topics/subscriptions@2022-10-01-preview' = {
  name: 'string'
  parent: resourceSymbolicName
  properties: {
    autoDeleteOnIdle: 'string'
    clientAffineProperties: {
      clientId: 'string'
      isDurable: bool
      isShared: bool
    }
    deadLetteringOnFilterEvaluationExceptions: bool
    deadLetteringOnMessageExpiration: bool
    defaultMessageTimeToLive: 'string'
    duplicateDetectionHistoryTimeWindow: 'string'
    enableBatchedOperations: bool
    forwardDeadLetteredMessagesTo: 'string'
    forwardTo: 'string'
    isClientAffine: bool
    lockDuration: 'string'
    maxDeliveryCount: int
    requiresSession: bool
    status: 'string'
  }
}