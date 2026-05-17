# Bicep MVP
to quick identify the minimum config by comment out the option

1. copy the bicep template
2. name the file as provider.resourcetype.bicep
3. edit the file to enable deployment the bicep with minmum parameter configured
4. if the resource need dependency, include the minimum parameter configured resource dependencies
5. deploy the file with `az deployment group create -g <resource_group> -f <bicep_file>
6. dump the json record as <bicep_file.json> for reference to know default value for options that not specific