param location string = resourceGroup().location

resource bastonhost 'Microsoft.Network/bastionHosts@2023-02-01' = {
  name: 'poc-bth'
  location: location
  tags: {
    environment: 'poc'    
  }
  sku: {
    name: 'Basic'
  }
  properties: {
    /*
    disableCopyPaste: bool
    dnsName: 'string'
    enableFileCopy: bool
    enableIpConnect: bool
    enableKerberos: bool
    enableShareableLink: bool
    enableTunneling: bool
    */
    ipConfigurations: [
      {
      //id: 'string'
        name: 'IpConf'
        properties: {
        //privateIPAllocationMethod: 'string'
          publicIPAddress: {
            id: '/subscriptions/559eff50-5276-42ce-80ba-a825f69db9fb/resourceGroups/poc-rg-20230710/providers/Microsoft.Network/publicIPAddresses/poc-pip-terry-01'
          }
          subnet: {
            id: '/subscriptions/559eff50-5276-42ce-80ba-a825f69db9fb/resourceGroups/poc-rg-20230710/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-01/subnets/AzureBastionSubnet'
          }
        }
      }
    ]
  //scaleUnits: int
    
  }
}
