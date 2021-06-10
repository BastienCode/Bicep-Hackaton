//Override scope because default = RG
targetScope = 'resourceGroup'

//Create storage account 
resource sta 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: toLower(uniqueString(resourceGroup().id))  // Generate unique name based on rg id 
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    routingPreference:{
      publishMicrosoftEndpoints:true // Why this property is interesting in this workshop ? 
    }
  }
  
}
