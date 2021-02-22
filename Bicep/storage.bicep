param location string = 'northeurope'
param name string = 'uniquestorage20212202' //must be globally unique
param tagcc string = '555666777'
param tagenv string = 'Dev' 

var StorageSku = 'Standard_LRS' //declare variable and assign value

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: name
  location: location
  kind: 'StorageV2'
  sku: {
    name:StorageSku //reference variable
  }
  tags:{
    'Cost Center': tagcc
    'Environment': tagenv
  }
}

output storageId string = stg.id //output of resourceID of storage account