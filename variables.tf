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

variable "sku" {
  description = "The SKU of the Event Hub Namespace"
  type        = string
  default     = "Standard" # Set a default value if needed
}

variable "sku_tier" {
  description = "The tier for the EventHub namespace (e.g., Basic, Standard)"
  type        = string
  default     = "Standard" # Set a default, if desired
}

variable "partition_count" {
  description = "The number of partitions for the EventHub"
  type        = number
  default     = 2 # Set a default value, can be customized
}

variable "message_retention" {
  description = "The number of days to retain messages in the EventHub"
  type        = number
  default     = 1 # Retain messages for 1 day by default, can be customized
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
  description = "The SKU for API Management (e.g., Developer, Standard)"
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

# Declare secret_name variable
variable "secret_name" {
  description = "The name of the secret in the Key Vault"
  type        = string
}

# Declare secret_value variable
variable "secret_value" {
  description = "The value of the secret to store in the Key Vault"
  type        = string
}


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
