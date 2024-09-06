
/***** Log Analytics Workspace Variables****/


variable "location"{
    type=string
    description="Location of the Log analytics workspace"
}
/*variable "resource_group_name"{
    type=string
    description="Resource Group name of the Log analytics workspace"
}*/

variable "log_analytics_name"{
    type=string
    description="Name of the Log analytics workspace"
}
variable "sku_log"{
    type=string
    description="SKU of the Log analytics workspace"
}
variable "retention_in_days"{
    type=number
    description="Number of days of data retention"
    }
/***************Application Insights name****************/
/*variable "application_insights_name"{
    type=string
    description="Name of the Application Insights"
}

variable "application_type"{
    type=string
    description="Type of the Application Insights"
}*/

# variable "backend_env"{
#     type= string
#     description="Number of days of data retention"
#     }
