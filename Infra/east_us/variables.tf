

variable "resource_group_name"{
    type= string
    description="Name of the resourse group"
    }
variable "location"{
    type=string
    description="Location of the Resources"
}

variable "vnet_name"{}
variable "subnet_name"{}

/*Log analytics Workspace Variables*/
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
variable "application_insights_name"{
    type=string
    description="Name of the Application Insights"
}

variable "application_type"{
    type=string
    description="Type of the Application Insights"
}
/******************Apim Management Instance********/
variable "apim_instance_name"{
    type=string
    description="Name of the API Management Instance"
}
variable "sku_apim_instance"{
    type=string
    description="SKU of the API Management Instance"
}
variable "publisher_email"{
    type=number
    description="Publisher Email"
    }
variable "publisher_name"{
    type=number
    description="Publisher Name"
    }