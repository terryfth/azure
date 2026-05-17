resource symbolicname 'Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies@2023-04-01' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  properties: {
    customRules: [
      {
        action: 'string'
        groupByUserSession: [
          {
            groupByVariables: [
              {
                variableName: 'string'
              }
            ]
          }
        ]
        matchConditions: [
          {
            matchValues: [
              'string'
            ]
            matchVariables: [
              {
                selector: 'string'
                variableName: 'string'
              }
            ]
            negationConditon: bool
            operator: 'string'
            transforms: [
              'string'
            ]
          }
        ]
        name: 'string'
        priority: int
        rateLimitDuration: 'string'
        rateLimitThreshold: int
        ruleType: 'string'
        state: 'string'
      }
    ]
    managedRules: {
      exclusions: [
        {
          exclusionManagedRuleSets: [
            {
              ruleGroups: [
                {
                  ruleGroupName: 'string'
                  rules: [
                    {
                      ruleId: 'string'
                    }
                  ]
                }
              ]
              ruleSetType: 'string'
              ruleSetVersion: 'string'
            }
          ]
          matchVariable: 'string'
          selector: 'string'
          selectorMatchOperator: 'string'
        }
      ]
      managedRuleSets: [
        {
          ruleGroupOverrides: [
            {
              ruleGroupName: 'string'
              rules: [
                {
                  action: 'string'
                  ruleId: 'string'
                  state: 'string'
                }
              ]
            }
          ]
          ruleSetType: 'string'
          ruleSetVersion: 'string'
        }
      ]
    }
    policySettings: {
      customBlockResponseBody: 'string'
      customBlockResponseStatusCode: int
      fileUploadEnforcement: bool
      fileUploadLimitInMb: int
      logScrubbing: {
        scrubbingRules: [
          {
            matchVariable: 'string'
            selector: 'string'
            selectorMatchOperator: 'string'
            state: 'string'
          }
        ]
        state: 'string'
      }
      maxRequestBodySizeInKb: int
      mode: 'string'
      requestBodyCheck: bool
      requestBodyEnforcement: bool
      requestBodyInspectLimitInKB: int
      state: 'string'
    }
  }
}