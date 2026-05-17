resource symbolicname 'Microsoft.SqlVirtualMachine/sqlVirtualMachines@2022-08-01-preview' = {
  name: 'string'
  location: 'string'
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  identity: {
    type: 'string'
  }
  properties: {
    assessmentSettings: {
      enable: bool
      runImmediately: bool
      schedule: {
        dayOfWeek: 'string'
        enable: bool
        monthlyOccurrence: int
        startTime: 'string'
        weeklyInterval: int
      }
    }
    autoBackupSettings: {
      backupScheduleType: 'string'
      backupSystemDbs: bool
      daysOfWeek: [
        'string'
      ]
      enable: bool
      enableEncryption: bool
      fullBackupFrequency: 'string'
      fullBackupStartTime: int
      fullBackupWindowHours: int
      logBackupFrequency: int
      password: 'string'
      retentionPeriod: int
      storageAccessKey: 'string'
      storageAccountUrl: 'string'
      storageContainerName: 'string'
    }
    autoPatchingSettings: {
      dayOfWeek: 'string'
      enable: bool
      maintenanceWindowDuration: int
      maintenanceWindowStartingHour: int
    }
    enableAutomaticUpgrade: bool
    keyVaultCredentialSettings: {
      azureKeyVaultUrl: 'string'
      credentialName: 'string'
      enable: bool
      servicePrincipalName: 'string'
      servicePrincipalSecret: 'string'
    }
    leastPrivilegeMode: 'string'
    serverConfigurationsManagementSettings: {
      additionalFeaturesServerConfigurations: {
        isRServicesEnabled: bool
      }
      azureAdAuthenticationSettings: {
        clientId: 'string'
      }
      sqlConnectivityUpdateSettings: {
        connectivityType: 'string'
        port: int
        sqlAuthUpdatePassword: 'string'
        sqlAuthUpdateUserName: 'string'
      }
      sqlInstanceSettings: {
        collation: 'string'
        isIfiEnabled: bool
        isLpimEnabled: bool
        isOptimizeForAdHocWorkloadsEnabled: bool
        maxDop: int
        maxServerMemoryMB: int
        minServerMemoryMB: int
      }
      sqlStorageUpdateSettings: {
        diskConfigurationType: 'string'
        diskCount: int
        startingDeviceId: int
      }
      sqlWorkloadTypeUpdateSettings: {
        sqlWorkloadType: 'string'
      }
    }
    sqlImageOffer: 'string'
    sqlImageSku: 'string'
    sqlManagement: 'string'
    sqlServerLicenseType: 'string'
    sqlVirtualMachineGroupResourceId: 'string'
    storageConfigurationSettings: {
      diskConfigurationType: 'string'
      sqlDataSettings: {
        defaultFilePath: 'string'
        luns: [
          int
        ]
      }
      sqlLogSettings: {
        defaultFilePath: 'string'
        luns: [
          int
        ]
      }
      sqlSystemDbOnDataDisk: bool
      sqlTempDbSettings: {
        dataFileCount: int
        dataFileSize: int
        dataGrowth: int
        defaultFilePath: 'string'
        logFileSize: int
        logGrowth: int
        luns: [
          int
        ]
        persistFolder: bool
        persistFolderPath: 'string'
      }
      storageWorkloadType: 'string'
    }
    virtualMachineResourceId: 'string'
    wsfcDomainCredentials: {
      clusterBootstrapAccountPassword: 'string'
      clusterOperatorAccountPassword: 'string'
      sqlServiceAccountPassword: 'string'
    }
    wsfcStaticIp: 'string'
  }
}