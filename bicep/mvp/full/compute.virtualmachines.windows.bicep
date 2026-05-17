param location string = resourceGroup().location

resource vm 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: 'poc-vm-terry-01'
  location: location
  tags: {
    environment: 'poc'    
  }
  /*
  extendedLocation: {
    name: 'string'
    type: 'EdgeZone'
  }
  identity: {
    type: 'string'
    userAssignedIdentities: {}
  }
  plan: {
    name: 'string'
    product: 'string'
    promotionCode: 'string'
    publisher: 'string'
  }
  */
  properties: {
    /*
    additionalCapabilities: {
      hibernationEnabled: bool
      ultraSSDEnabled: bool
    }
    applicationProfile: {
      galleryApplications: [
        {
          configurationReference: 'string'
          enableAutomaticUpgrade: bool
          order: int
          packageReferenceId: 'string'
          tags: 'string'
          treatFailureAsDeploymentFailure: bool
        }
      ]
    }
    availabilitySet: {
      id: 'string'
    }
    billingProfile: {
      maxPrice: json('decimal-as-string')
    }
    capacityReservation: {
      capacityReservationGroup: {
        id: 'string'
      }
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: bool
        storageUri: 'string'
      }
    }
    evictionPolicy: 'string'
    extensionsTimeBudget: 'string'
    */
    hardwareProfile: {
      vmSize: 'Standard_B1s'
      /*
      vmSizeProperties: {
        vCPUsAvailable: int
        vCPUsPerCore: int
      }
      */
    }
    /*
    host: {
      id: 'string'
    }
    hostGroup: {
      id: 'string'
    }
    licenseType: 'string'
    */
    networkProfile: {
      networkApiVersion: '2020-11-01'
      networkInterfaceConfigurations: [
        {
          name: 'poc-vm-terry-01-nic'
          properties: {
            /*
            deleteOption: 'string'
            disableTcpStateTracking: bool
            dnsSettings: {
              dnsServers: [
                'string'
              ]
            }
            dscpConfiguration: {
              id: 'string'
            }
            enableAcceleratedNetworking: bool
            enableFpga: bool
            enableIPForwarding: bool
            */
            ipConfigurations: [
              {
                name: 'ipconfig1'
                properties: {
                  /*
                  applicationGatewayBackendAddressPools: [
                    {
                      id: 'string'
                    }
                  ]
                  applicationSecurityGroups: [
                    {
                      id: 'string'
                    }
                  ]
                  loadBalancerBackendAddressPools: [
                    {
                      id: 'string'
                    }
                  ]
                  primary: bool
                  privateIPAddressVersion: 'string'                  
                  */                  
                  publicIPAddressConfiguration: {
                    name: 'poc-pip-terry-01'
                    properties: {
                      /*
                      deleteOption: 'string'
                      dnsSettings: {
                        domainNameLabel: 'string'
                      }
                      idleTimeoutInMinutes: int
                      ipTags: [
                        {
                          ipTagType: 'string'
                          tag: 'string'
                        }
                      ]
                      */
                      publicIPAddressVersion: 'IPv4'
                      publicIPAllocationMethod: 'Static'
                      /*
                      publicIPPrefix: {
                        id: 'string'
                      }
                      */
                    }
                    sku: {
                      name: 'Standard'
                    //tier: 'string'
                    }
                  }                  
                  subnet: {
                    id: '/subscriptions/02af7de8-5a55-4ea6-8951-7af0eb7581fb/resourceGroups/poc-rg-terry/providers/Microsoft.Network/virtualNetworks/poc-vnt-terry-01/subnets/poc-sbn-terry-01'
                  }                  
                }
              }
            ]
            /*
            networkSecurityGroup: {
              id: 'string'
            }
            primary: bool
            */
          }
        }
      ]
      /*
      networkInterfaces: [
        {
          id: 'string'
          properties: {
            deleteOption: 'string'
            primary: bool
          }
        }
      ]
      */
    }    
    osProfile: {
      adminPassword: 'r433gweTF@cn'
      adminUsername: 'terryfth'
    //allowExtensionOperations: bool
      computerName: 'windows01'
    //customData: 'string'
      /*
      linuxConfiguration: {
        disablePasswordAuthentication: bool
        enableVMAgentPlatformUpdates: bool
        patchSettings: {
          assessmentMode: 'string'
          automaticByPlatformSettings: {
            rebootSetting: 'string'
          }
          patchMode: 'string'
        }
        provisionVMAgent: bool
        ssh: {
          publicKeys: [
            {
              keyData: 'string'
              path: 'string'
            }
          ]
        }
      }      
      requireGuestProvisionSignal: bool
      secrets: [
        {
          sourceVault: {
            id: 'string'
          }
          vaultCertificates: [
            {
              certificateStore: 'string'
              certificateUrl: 'string'
            }
          ]
        }
      ]
      windowsConfiguration: {
        additionalUnattendContent: [
          {
            componentName: 'Microsoft-Windows-Shell-Setup'
            content: 'string'
            passName: 'OobeSystem'
            settingName: 'string'
          }
        ]
        enableAutomaticUpdates: bool
        enableVMAgentPlatformUpdates: bool
        patchSettings: {
          assessmentMode: 'string'
          automaticByPlatformSettings: {
            rebootSetting: 'string'
          }
          enableHotpatching: bool
          patchMode: 'string'
        }
        provisionVMAgent: bool
        timeZone: 'string'
        winRM: {
          listeners: [
            {
              certificateUrl: 'string'
              protocol: 'string'
            }
          ]
        }
      }
      */
    }
    /*
    platformFaultDomain: int
    priority: 'string'
    proximityPlacementGroup: {
      id: 'string'
    }
    scheduledEventsProfile: {
      osImageNotificationProfile: {
        enable: bool
        notBeforeTimeout: 'string'
      }
      terminateNotificationProfile: {
        enable: bool
        notBeforeTimeout: 'string'
      }
    }
    securityProfile: {
      encryptionAtHost: bool
      securityType: 'string'
      uefiSettings: {
        secureBootEnabled: bool
        vTpmEnabled: bool
      }
    }
    */
    storageProfile: {
      /*
      dataDisks: [
        {
          caching: 'string'
          createOption: 'string'
          deleteOption: 'string'
          detachOption: 'ForceDetach'
          diskSizeGB: int
          image: {
            uri: 'string'
          }
          lun: int
          managedDisk: {
            diskEncryptionSet: {
              id: 'string'
            }
            id: 'string'
            securityProfile: {
              diskEncryptionSet: {
                id: 'string'
              }
              securityEncryptionType: 'string'
            }
            storageAccountType: 'string'
          }
          name: 'string'
          toBeDetached: bool
          vhd: {
            uri: 'string'
          }
          writeAcceleratorEnabled: bool
        }
      ]      
      diskControllerType: 'string'
      */
      imageReference: {
      //communityGalleryImageId: 'string'
      //id: 'string'
        offer: 'WindowsServer'
        publisher: 'MicrosoftWindowsServer'
      //sharedGalleryImageId: 'string'
        sku: '2022-datacenter-azure-edition'
        version: 'latest'
      }      
      osDisk: {
      //caching: 'string'
        createOption: 'fromImage'
        /*
        deleteOption: 'string'
        diffDiskSettings: {
          option: 'Local'
          placement: 'string'
        }
        diskSizeGB: int
        encryptionSettings: {
          diskEncryptionKey: {
            secretUrl: 'string'
            sourceVault: {
              id: 'string'
            }
          }
          enabled: bool
          keyEncryptionKey: {
            keyUrl: 'string'
            sourceVault: {
              id: 'string'
            }
          }
        }
        image: {
          uri: 'string'
        }
        */
        managedDisk: {
          /*
          diskEncryptionSet: {
            id: 'string'
          }
          id: 'string'
          securityProfile: {
            diskEncryptionSet: {
              id: 'string'
            }
            securityEncryptionType: 'string'
          }
          */
          storageAccountType: 'StandardSSD_LRS'
        }
        /*
        name: 'string'
        osType: 'string'
        vhd: {
          uri: 'string'
        }
        writeAcceleratorEnabled: bool
        */
      }
    }
    /*
    userData: 'string'
    virtualMachineScaleSet: {
      id: 'string'
    }
    */
  }
  /*  
  zones: [
    'string'
  ]
  */
}
