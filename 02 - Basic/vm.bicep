param vmName string = 'vmname'
param nicSubnetId string

// Create Network Interface
resource nic 'Microsoft.Network/networkInterfaces@2021-02-01' = {
  name: '${vmName}-nic'
  location: resourceGroup().location
  properties:{
    enableAcceleratedNetworking: false
    ipConfigurations: [
      {
        name:'ipconfig'
        properties:{
          privateIPAllocationMethod:'Dynamic'
          subnet:{
            id: nicSubnetId
          }
        }
      }
    ]
  }  
}

// Create VM 

resource vm 'Microsoft.Compute/virtualMachines@2021-03-01' = {
  name: vmName
  location: resourceGroup().location
  properties:{
    hardwareProfile:{
      vmSize:'Standard_D2s_v3'
    }
    storageProfile:{
      imageReference:{
        offer:'WindowsServer'
        publisher:'MicrosoftWindowsServer'
        sku:'2019-Datacenter'
        version: 'latest'
      }
      osDisk:{
        osType:'Windows'
        createOption:'FromImage'        
      }
    }
    osProfile:{
      adminPassword: '%u|4khEQLTTI/?pqL45a'
      adminUsername: 'admBSI'
      computerName: vmName
    }
    networkProfile:{
      networkInterfaces:[
        {
          id:nic.id
        }
      ]
    }
  }
  
}
