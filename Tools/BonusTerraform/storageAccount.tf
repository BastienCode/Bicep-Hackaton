
variable "sku" {
  default = "Standard_LRS"
  type = string
}

resource "azurerm_storage_account" "mySTA" {
  name = "helloterraform"
  location = "francecentral"
  account_kind = "Storage"
  account_replication_type = "Standard_LRS"
  account_tier = "standard"
  
}