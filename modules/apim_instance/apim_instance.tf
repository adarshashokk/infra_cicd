resource "azurerm_api_management" "apim_instance" {
  name                = var.apim_instance_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_apim_instance
  virtual_network_type= "Internal"
   virtual_network_configuration {
    subnet_id = data.azurerm_subnet.apim_instance.id
  }
}