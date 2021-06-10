param vnetName string = 'BicepVNet'
param vnetAdressSpace string = '10.0.0.0/8'
param subnetName string = 'subnet1'
param vnetSubnetCIDR string = '10.0.1.0/24'

// Create VNet
resource vnet 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: vnetName
  location: resourceGroup().location
  properties:{
    addressSpace:{
      addressPrefixes:[
        vnetAdressSpace
      ]
    }        
  }
}

// Create a subnet (can be also created during VNet creation )
resource subnet 'Microsoft.Network/virtualNetworks/subnets@2021-02-01' = {
  name: subnetName
  parent: vnet
  properties: {
    addressPrefix: vnetSubnetCIDR
  }  
}

//Output

output subnetId string = subnet.id
