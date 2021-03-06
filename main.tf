#-------------------------------
# Provide main logic here
#-------------------------------


#-------------------------------
# create resource group
#-------------------------------

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location_rg

}



/*
#-------------------------------
# create vnet
#-------------------------------


resource "azurerm_virtual_network" "az303-vnet" {
  name                = var.vnet_name
  location            = var.location_rg
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]


  subnet {
    name           = var.subnet_name
    address_prefix = "10.0.1.0/24"
  }


  tags = {
    environment = "dev"
  }
}

*/




# data - resource type
# this is used to read info about a resource in the subscription
# what is difference between mode managed and mode data. 

#data "azurerm_resource_group" "name" {

#}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_resource_group" "example2" {
  name     = "example-resources2"
  location = "North Europe"
}

resource "azurerm_public_ip" "example" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }

}