resource symbolicname 'Microsoft.Insights/webtests@2022-06-15' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  kind: 'string'
  properties: {
    Configuration: {
      WebTest: 'string'
    }
    Description: 'string'
    Enabled: bool
    Frequency: int
    Kind: 'string'
    Locations: [
      {
        Id: 'string'
      }
    ]
    Name: 'string'
    Request: {
      FollowRedirects: bool
      Headers: [
        {
          key: 'string'
          value: 'string'
        }
      ]
      HttpVerb: 'string'
      ParseDependentRequests: bool
      RequestBody: 'string'
      RequestUrl: 'string'
    }
    RetryEnabled: bool
    SyntheticMonitorId: 'string'
    Timeout: int
    ValidationRules: {
      ContentValidation: {
        ContentMatch: 'string'
        IgnoreCase: bool
        PassIfTextFound: bool
      }
      ExpectedHttpStatusCode: int
      IgnoreHttpStatusCode: bool
      SSLCertRemainingLifetimeCheck: int
      SSLCheck: bool
    }
  }
}