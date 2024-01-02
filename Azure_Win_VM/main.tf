
# resource group creation
resource "azurerm_resource_group" "terraform_grp" {
  name     = var.rg_name
  location = var.resource_group_location
}

# this will create a virtual network
resource "azurerm_virtual_network" "terraform_net" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terraform_grp.location
  resource_group_name = azurerm_resource_group.terraform_grp.name
}

#this code will create a subnet in virtual network
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.terraform_grp.name
  virtual_network_name = azurerm_virtual_network.terraform_net.name
  address_prefixes     = ["10.0.2.0/24"]
}

#it will create a network interface in resource group
resource "azurerm_network_interface" "network_interface" {
  name                = var.nic_name
  location            = azurerm_resource_group.terraform_grp.location
  resource_group_name = azurerm_resource_group.terraform_grp.name

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = var.private_ip_allocation
  }
}


# this code block will create a VM in azure portal
resource "azurerm_windows_virtual_machine" "VM" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.terraform_grp.name
  location            = azurerm_resource_group.terraform_grp.location
  size                = var.vm_size
  admin_username      = var.vm_username
  admin_password      = var.vm_pass
  network_interface_ids = [
    azurerm_network_interface.network_interface.id,
  ]

  os_disk {
    caching              = var.caching_type
    storage_account_type = var.storage_type
  }

  source_image_reference {
    publisher = var.publisher_name
    offer     = var.offer_type
    sku       = var.sku_type
    version   = var.vm_version
  }
}
