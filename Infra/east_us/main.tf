


/***********Module for Log Analytics Workspace Creation********************************/

module "log_analytics" {
source= "./modules/log_analytics"
location=var.location
log_analytics_name = var.log_analytics_name
resource_group_name = data.azurerm_resource_group.rg.name
sku_log =var.sku_log
retention_in_days = var.retention_in_days
}

/***********Module for Application Insights Creation********************************/

module "app_insights"{
source= "./modules/app_insights"
location=var.location
application_insights_name = var.application_insights_name
resource_group_name = data.azurerm_resource_group.rg.name
application_type =var.application_type
}

module "apim_instance"{
source= "./modules/apim_instance"
location=var.location
resource_group_name = data.azurerm_resource_group.rg.name
apim_instance_name  = var.apim_instance_name
publisher_name = var.publisher_name
publisher_email   = var.publisher_email
sku_apim_instance   = var.sku_apim_instance
subnet_id = data.azurerm_subnet.subnet.id
}
