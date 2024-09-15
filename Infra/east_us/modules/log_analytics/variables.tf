variable "location"{
    type=string
    description="Location of the Log analytics workspace"
}
variable "log_analytics_name"{
    type=string
    description="Name of the Log analytics workspace"
}
variable "resource_group_name"{
    type=string
    description="Resource Group name of the Log analytics workspace"
}
variable "sku_log"{
    type=string
    description="SKU of the Log analytics workspace"
}
variable "retention_in_days"{
    type=number
    description="Number of days of data retention"
    }
