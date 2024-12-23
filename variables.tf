#common variables (Resource group, location, etc.)
variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for Azure (optional)"
  type        = string
  default     = null
}

variable "client_id" {
  description = "The Client ID for OIDC authentication"
  type        = string
}

variable "storage_account_name" {
  description = "The storage account where the state file is stored"
  type        = string
}

variable "container_name" {
  description = "The container in the storage account for the state file"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be deployed"
  type        = string
}

#variable "user_assigned_identity_client_id" {
#  description = "The Client ID of the User Assigned Managed Identity (UAMI)"
#  type        = string
#}

#variable "user_assigned_identity_object_id" {
#  description = "The object ID of the user-assigned managed identity."
#  type        = string
#}

variable "use_oidc" {
  description = "Enable OIDC authentication (e.g., for GitHub Actions)"
  type        = bool
  default     = false
}

variable "use_msi" {
  description = "Boolean flag to enable Managed Identity (UAMI) authentication"
  type        = bool
  default     = false
}

# Function App variables
variable "app_service_plan_name" {
  description = "The name of the app service plan"
  type        = string
}

variable "function_app_name" {
  description = "The name of the function app"
  type        = string
}

variable "package_url" {
  description = "The URL of the package to deploy"
  type        = string
}
variable "user_assigned_identity_id" {
  description = "The ID of the user-assigned managed identity to associate with the Function App"
  type        = string
}

### EventHub variables ###
variable "eventhub_namespace_name" {
  description = "The name of the EventHub namespace"
  type        = string
}

variable "eventhub_name" {
  description = "The name of the EventHub"
  type        = string
}

variable "sku_name_eventhub" {
  description = "The SKU for the EventHub (e.g., Basic, Standard)"
  type        = string
}
variable "sku_tier_eventhub" {
  description = "The SKU tier for EventHub"
  type        = string
}
variable "sku_capacity_eventhub" {
  description = "The capacity for the EventHub (e.g., 1, 2, etc. for Standard/Premium tiers)"
  type        = number
}

variable "partition_count" {
  description = "The number of partitions for the EventHub"
  type        = number
  default     = 2
}

variable "message_retention" {
  description = "The number of days to retain messages in the EventHub"
  type        = number
  default     = 7
}


### ADX variables ###
variable "adx_cluster_name" {
  description = "The name of the Azure Data Explorer cluster"
  type        = string
}

variable "adx_database_name" {
  description = "The name of the Azure Data Explorer database"
  type        = string
}


### APIM variables ###
variable "api_management_name" {
  description = "The name of the API Management instance"
  type        = string
}

variable "publisher_name" {
  description = "The publisher name for the API Management instance"
  type        = string
}

variable "publisher_email" {
  description = "The publisher email for the API Management instance"
  type        = string
}

variable "sku_name" {
  description = "The SKU name for API Management (e.g., Developer, Standard, Premium)"
  type        = string
}


variable "environment" {
  description = "The environment tag (e.g., Dev, QA, Prod)"
  type        = string
}


# Declare key_vault_name variable
variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}

#variable "object_id" {
#  description = "The Object ID of the principal requiring Key Vault access"
#  type        = string
#}


# Declare app_insights_name variable
variable "app_insights_name" {
  description = "The name of the Application Insights instance"
  type        = string
}

# Declare identity_name variable
variable "identity_name" {
  description = "The name of the User Assigned Managed Identity"
  type        = string
}

variable "scope" {
  description = "The scope for the role assignment (e.g., a resource group or subscription)"
  type        = string
}

#variable "aad_group_object_id" {
#  description = "Object ID of the Azure AD group for developers"
#  type        = string
#}
