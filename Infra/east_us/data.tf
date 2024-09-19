data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}
output "id" {
  value = data.azurerm_resource_group.rg.id
}

# data "azurerm_subnet" "subnet" {
#   name                 = var.subnet_name
#   virtual_network_name = var.vnet_name
#   resource_group_name  = var.resource_group_name
# }

output "subnet_id" {
  value = data.azurerm_subnet.subnet.id
}