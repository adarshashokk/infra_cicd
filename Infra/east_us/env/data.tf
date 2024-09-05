data "azurerm_resource_group" "rg" {
  name = "aep_adarsh_rg01"
}
output "id" {
  value = data.azurerm_resource_group.rg.id
}