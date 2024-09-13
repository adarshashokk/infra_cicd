resource "azurerm_api_management" "apim_instance" {
  name                = var.apim_instance_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_apim_instance
  virtual_network_type= "Internal"
   virtual_network_configuration {
    subnet_id = var.subnet_id
  }
}

# Diagnostic settings to send logs to Log Analytics and Application Insights
/*resource "azurerm_api_management_logger" "example" {
  name                = "example-apimlogger"
  api_management_name = azurerm_api_management.example.name
  resource_group_name = azurerm_resource_group.example.name

  application_insights {
    instrumentation_key = azurerm_application_insights.example.instrumentation_key
  }
}

resource "azurerm_api_management_diagnostic" "example" {
  identifier               = "applicationinsights"
  resource_group_name      = azurerm_resource_group.example.name
  api_management_name      = azurerm_api_management.example.name
  api_management_logger_id = azurerm_api_management_logger.example.id

  sampling_percentage       = 5.0
  always_log_errors         = true
  log_client_ip             = true
  verbosity                 = "verbose"
  http_correlation_protocol = "W3C"

  frontend_request {
    body_bytes = 32
    headers_to_log = [
      "content-type",
      "accept",
      "origin",
    ]
  }

  frontend_response {
    body_bytes = 32
    headers_to_log = [
      "content-type",
      "content-length",
      "origin",
    ]
  }

  backend_request {
    body_bytes = 32
    headers_to_log = [
      "content-type",
      "accept",
      "origin",
    ]
  }

  backend_response {
    body_bytes = 32
    headers_to_log = [
      "content-type",
      "content-length",
      "origin",
    ]
  }
}
Copy
Argument Reference
The following arguments are supported:

*/