data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}
output "id" {
  value = data.azurerm_resource_group.rg.id
}