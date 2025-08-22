resource "azurerm_resource_group" "resource_group" {
  name     = "RG-VM"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_public_ip" "public_ip" {
  name                = "public-ip-fterraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  allocation_method   = "Static"

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
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip_address} > ip_address.txt"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip_address
    user        = "fterraform"
    private_key = file("~/.ssh/azure-key")
  }

  provisioner "remote-exec" {
    inline = [
      "echo subnet_id: ${data.terraform_remote_state.vnet.outputs.subnet_id} >> /tmp/network_info.txt",
      "echo network_security_group_id: ${data.terraform_remote_state.vnet.outputs.network_security_group_id} >> /tmp/network_info.txt",
    ]
  }

  provisioner "file" {
    source      = ".docs/"
    destination = "/tmp/"
  }

  provisioner "file" {
    content     = "VM size: ${self.size}\nLocation: ${self.location}\nResource Group: ${self.resource_group_name}\n"
    destination = "/tmp/vm_info.txt"
  }

  tags = local.common_tags
}