variable "location"{
    type=string
    description="Location of the API Management Instance"
}
variable "apim_instance_name"{
    type=string
    description="Name of the API Management Instance"
}
variable "resource_group_name"{
    type=string
    description="Resource Group name of the API Management Instance"
}
variable "sku_apim_instance"{
    type=string
    description="SKU of the API Management Instance"
}
variable "publisher_email"{
    type=string
    description="Publisher Email"
    }
variable "publisher_name"{
    type=string
    description="Publisher Name"
    }
variable "subnet_id"{}
/**Diagnostic settings****/

/*variable "apim_diagnostics"{}
variable "log_analytics_workspace_id"{}
variable "application_insights_id"{}*/