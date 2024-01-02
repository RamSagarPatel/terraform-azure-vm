
  

#Resource group variables
variable "resource_group_location"{
   type =  string 
    default = "Central India"
}

variable "rg_name" {
    type = string
    default = "terraform-rg"
  
}

#virtual network variable

variable "vnet_name" {
    type = string
    default = "terraform-net"
  
}

#subnet variable
variable "subnet_name" {
    type = string
    default = "sub-net"
  
}

#network interface variables
variable "nic_name" {
    type = string
    default = "network-interface"
  
}

variable "ip_config_name" {
    type = string
    default = "internal"
  
}

variable "private_ip_allocation" {
    type = string
    default = "Dynamic"
  
}



#virtual machine variables
variable "vm_name" {
    type = string
    default = "tf-vm"
  
}

variable "vm_size" {
    type = string
    default = "Standard_D2s_v3"
  
}

variable "vm_username" {
    type = string
    default = "adminuser"
  
}

variable "vm_pass" {
    type = string
    default = "Azure@321"
  
}


#os disk variables

variable "caching_type" {
    type = string
    default = "ReadWrite"
  
}

variable "storage_type" {
  type = string
  default = "Standard_LRS"
}


# source image variables
variable "publisher_name" {
    type = string
    default = "MicrosoftWindowsServer"
  
}

variable "offer_type" {
    type = string
    default = "WindowsServer"
  
}

variable "sku_type" {
type = string
default = "2019-Datacenter"
  
}

variable "vm_version" {
    type = string
    default = "latest"
  
}
# provider variables. these will be used in  provider.tf to provide credentials(it will help to secure credentials and reuse this file for other cloud provider)
variable "subscription-id" {
    type = string
    default = "549cebc9-b1e5-466c-b256-31cedcb7df9c"
  
}

variable "client-id" {
    type = string
    default = "8bf5bc0b-51b4-47d3-b586-99060689a583"
  
}

variable "client-secret" {
    type = string
    default = "WSg8Q~92rsssdyw6Kpcud9P2ZhlAKKSPHfBfday."
  
}

variable "tenant-id" {
    type = string
    default = "65795da9-827f-449c-afaa-2de0dae21c7a"
  
}