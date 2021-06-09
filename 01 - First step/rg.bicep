param prefix string   = 'labBicep01'
param location string = 'francecentral'
param env string      = 'prod'

//Build variables
var rgName = '${env}-${prefix}-rg'

//Override scope because default = RG
targetScope = 'subscription'

//Create RG
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  
}
