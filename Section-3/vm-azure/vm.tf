resource "azurerm_resource_group" "resource_group" {
  name     = "RG-VM"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_public_ip" "public_ip" {
  name                = "public-ip-fterraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  allocation_method   = "Dynamic"

  tags = local.common_tags
}

resource "azurerm_network_interface" "network_interface" {
  name                = "nic-fterraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "public-ip-fterraform"
    subnet_id                     = data.terraform_remote_state.vnet.outputs.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }

  tags = local.common_tags
}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
  network_interface_id      = azurerm_network_interface.network_interface.id
  network_security_group_id = data.terraform_remote_state.vnet.outputs.network_security_group_id
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm-fterraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  size                = "Standard_B1s"
  admin_username      = "fterraform"

  admin_ssh_key {
    username   = "fterraform"
    public_key = file("~/.ssh/azure-key.pub")
  }

  network_interface_ids = [
    azurerm_network_interface.network_interface.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "22_04-LTS"
    version   = "latest"
  }

  tags = local.common_tags
}