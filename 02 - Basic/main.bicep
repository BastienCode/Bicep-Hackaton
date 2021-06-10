param prefix string   = 'labBicep02'
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

//Create Network stack

module OneNetwork 'network.bicep' = {
  scope: rg
  name: 'OneNetwork'
  params: {
    vnetName: 'myVnet'
    subnetName: 'mySubnet'
    vnetAdressSpace: '10.0.0.0/8'
    vnetSubnetCIDR: '10.0.1.0/24'
  }
}

// Create One VM

module VM1 'vm.bicep' = {
  scope: rg
  name: 'VM1'
  params: {
    vmName: 'vm1'
    nicSubnetId: OneNetwork.outputs.subnetId 
  }
  
}

//Create multiple VM

var vmList = [
  'vm2'
  'vm3'
]

module multipleVM 'vm.bicep' = [for vm in vmList : {
  scope: rg
  name: vm
  params: {
    vmName: vm
    nicSubnetId:OneNetwork.outputs.subnetId
  }
}]
