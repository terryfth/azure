resource sqs 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: 'poc-sqs-terry-01'
  location: 'eastasia'
  properties: {
    administratorLogin: 'terryfth'
    administratorLoginPassword: 'w1ow34f34w09dTF@CC'
  }
}

resource sdb 'Microsoft.Sql/servers/databases@2022-05-01-preview' = {
  name: 'poc-sdb-terry-01'
  location: 'eastasia'  
  parent: sqs  
}
