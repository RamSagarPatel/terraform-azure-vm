#output for Azure resource group 

output "resource_group_name"{
    
    description = "Name of Azure resource Group "
    value = azurerm_resource_group.terraform_grp.name
}

output "resource_group_location" { 
    description = "Location of the azure resource group"
    value = azurerm_resource_group.terraform_grp.location
  
}

#output for azure virtual network
output "vnet_id" {
    description = "Id of the azure virtual network"
    value = azurerm_virtual_network.terraform_net.id
  
}

output "vnet_address_space" {
  description = "Address space of tha azure virtual network"
  value = azurerm_virtual_network.terraform_net.address_space
}

#output for subnet 
output "subnet_id" {
    description = "ID of azure subnet"
   value = azurerm_subnet.subnet.id
}

output "subnet_address_prefix" {
    description = "Address prefix of the azure subnet"
    value = azurerm_subnet.subnet.address_prefixes[0]
  
}

#Output for azure network interface

output "nic_id" {
    description = "ID of Azure network interface"
    value = azurerm_network_interface.network_interface.id
  
}

output "private_ip" {
     description = "private IP address of the azure network interface"
     value = azurerm_network_interface.network_interface.ip_configuration[0].private_ip_address
  
}

#Output for azure virtual machine
output "vm_id" {
  description = "ID of Azure virtual machine"
  value = azurerm_windows_virtual_machine.VM.id
}

output "vm_public_ip" {
    description = "Public IP address of the azure virtual machine"
    value = azurerm_windows_virtual_machine.VM.public_ip_address

  
}

output "vm_private_ip" {
    description = "Private IP address of the Azure virtual machine"
    value = azurerm_windows_virtual_machine.VM.private_ip_address
  
}