


/***********Module for Log Analytics Workspace Creation****************************************/

module log_analytics{
source= "../../modules/log_analytics"
location=var.location
log_analytics_name = var.log_analytics_name
resource_group_name = data.azurerm_resource_group.rg.name
sku_log =var.sku_log
retention_in_days = var.retention_in_days
}


/*module "app_insights"{
source= "../modules/log_analytics"
location=var.location
application_insights_name = var.application_insights_name
resource_group_name = var.resource_group_name
application_type =var.application_type
}*/
