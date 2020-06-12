provider "azurerm" {
  version = "2.2.0"
  features {}
}

variable "locations" {
  type    = list
  default = [
    "westus",
    "eastus" 
    ]
}

resource "azurerm_resource_group" "web_server_rg" {
  count               = length(var.location)

  name     = "${var.env_name}-${var.azure_instance_names[count.index]}"
  location = var.location
}
