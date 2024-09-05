data "azurerm_resource_group" "rg" {
  name = "adarsh_rg01"
}
output "id" {
  value = data.azurerm_resource_group.rg.id
}