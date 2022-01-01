


variable "location"{
    type = string
default = "eastus"

}

variable "env"{
type = string
default = "dev"
description = "the envoronment"



}



variable "subscriptionId" {
    type = string
    description = "(optional) describe your variable"
}

variable "tenantId" {
    type = string
    description = "(optional) describe your variable"
}

variable "clientId" {
    type = string
    description = "(optional) describe your variable"
}

variable "clientSecret" {
    type = string
    description = "(optional) describe your variable"
}


variable "resource_group_name" {
  type        = string
  description = "description of the variable"
  
}

variable "resource_group_location" {
  type = string

  description = "description of the variable"
  default     = "norwayeast"
}

variable "resource_group_tag" {
  type        = string
  description = "description of the variable"
  default     = ""

}

variable "temp" {
  # if the type is not defined, then the variable can be used for any type.
  # if the default is provided, then terraform will get this info at run time.
  default = ""
}

variable "location_rg" {

  type        = string
  default     = "norwayeast"
  description = "resource location"


}

#################### VNET################################
variable "vnet_name" {
  type        = string
  description = "vnet description"
  default     = "vnet-az303"

}

variable "vnet_loc" {
  type        = string
  description = "vnet location"
  default = "value"



}

variable "subnet_name" {
  type        = string
  description = "subnet description"
  default     = "vnet1"


}

