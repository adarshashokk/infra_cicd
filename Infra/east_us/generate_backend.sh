
# #!/bin/bash

# # Create the backend.tf file
# cat <<EOF > backend.tf
# terraform {
#   backend "azurerm" {
#     resource_group_name      = "$BACKEND_RESOURCE_GROUP_NAME"
#     storage_account_name     = "$BACKEND_STORAGE_ACCOUNT_NAME"
#     container_name           = "$BACKEND_CONTAINER_NAME"
#     key                      = "$BACKEND_KEY/terraform.tfstate"
#     access_key               = "$AZURE_STORAGE_ACCESS_KEY"
#   }
# }
# EOF