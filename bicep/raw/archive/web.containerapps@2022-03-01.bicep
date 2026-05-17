resource symbolicname 'Microsoft.Web/containerApps@2022-03-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  kind: 'string'
  properties: {
    configuration: {
      activeRevisionsMode: 'string'
      ingress: {
        allowInsecure: bool
        external: bool
        targetPort: int
        traffic: [
          {
            latestRevision: bool
            revisionName: 'string'
            weight: int
          }
        ]
        transport: 'string'
      }
      registries: [
        {
          passwordSecretRef: 'string'
          server: 'string'
          username: 'string'
        }
      ]
      secrets: [
        {
          name: 'string'
          value: 'string'
        }
      ]
    }
    kubeEnvironmentId: 'string'
    template: {
      containers: [
        {
          args: [
            'string'
          ]
          command: [
            'string'
          ]
          env: [
            {
              name: 'string'
              secretRef: 'string'
              value: 'string'
            }
          ]
          image: 'string'
          name: 'string'
          resources: {
            cpu: int
            memory: 'string'
          }
        }
      ]
      dapr: {
        appId: 'string'
        appPort: int
        components: [
          {
            metadata: [
              {
                name: 'string'
                secretRef: 'string'
                value: 'string'
              }
            ]
            name: 'string'
            type: 'string'
            version: 'string'
          }
        ]
        enabled: bool
      }
      revisionSuffix: 'string'
      scale: {
        maxReplicas: int
        minReplicas: int
        rules: [
          {
            azureQueue: {
              auth: [
                {
                  secretRef: 'string'
                  triggerParameter: 'string'
                }
              ]
              queueLength: int
              queueName: 'string'
            }
            custom: {
              auth: [
                {
                  secretRef: 'string'
                  triggerParameter: 'string'
                }
              ]
              metadata: {}
              type: 'string'
            }
            http: {
              auth: [
                {
                  secretRef: 'string'
                  triggerParameter: 'string'
                }
              ]
              metadata: {}
            }
            name: 'string'
          }
        ]
      }
    }
  }
}