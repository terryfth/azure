param location string = resourceGroup().location

resource symbolicname 'Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies@2023-02-01' = {
  name: 'poc-waf-terry-02'
  location: location
  tags: {
    environment: 'poc'    
  }
  properties: {
    /*
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
    */
    managedRules: {
      /*
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
      */      
      managedRuleSets: [
        {
          /*
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
          */
          ruleSetType: 'OWASP'
          ruleSetVersion: '3.1'
        }
      ]
    }
    /*
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
    */
  }
}
