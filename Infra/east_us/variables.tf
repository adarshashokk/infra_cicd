

variable "resource_group_name"{
    default="rg-test123"
    type= string
    description="Name of the resourse group"
    }
variable "location"{
    default ="East Us"
    type=string
    description="Location of the Resources"
}

variable "vnet_name"{
default="testvnet"
}
variable "subnet_name"{
    default="testsnet"
}


/*Log analytics Workspace Variables*/
variable "log_analytics_name"{
    default= "testlog12"
    type=string
    description="Name of the Log analytics workspace"
}
variable "sku_log"{
    default="PerGB2018"
    type=string
    description="SKU of the Log analytics workspace"
}
variable "retention_in_days"{
    type=number
    default = 30
    description="Number of days of data retention"
    }
/***************Application Insights name****************/
variable "application_insights_name"{
    default="testappinsi"
    type=string
    description="Name of the Application Insights"
}

variable "application_type"{
    default="web"
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
    type=string
    description="Publisher Email"
    }
variable "publisher_name"{
    type=string
    description="Publisher Name"
    }