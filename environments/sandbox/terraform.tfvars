resource_group_name              = "ctr-dev-westeu-rg"
location                         = "West Europe"
environment                      = "Development" # Specify the environment (dev, test, prod, etc.)
subscription_id                  = "2ef25ed3-e720-486d-b108-694985080ca7"
tenant_id                        = "adb53b4f-b05f-4dcb-a2e1-9111380568c3"


######################################################################

# Storage Account Configuration
storage_account_name = "ctrdevwesteusa"
container_name       = "dev-state"

######################################################################

# Azure Function App Configuration
app_service_plan_name = "ctr-dev-westeu-asp"
function_app_name     = "ctr-dev-westeu-app"
package_url           = "https://example.com/dev-functions-package.zip"

######################################################################

# APIM Configuration
api_management_name       = "ctr-dev-westeu-apim"
publisher_name            = "Dev Publisher"
publisher_email           = "v-vaibhav.mishra@circlek.com"
user_assigned_identity_id = "/subscriptions/2ef25ed3-e720-486d-b108-694985080ca7/resourceGroups/devctrrg01/providers/Microsoft.ManagedIdentity/userAssignedIdentities/CTRManagedIdentity"
sku_name                  = "Developer_1"

######################################################################

# Azure Data Explorer (ADX) Configuration
adx_cluster_name  = "ctr-dev-westeu-adxc"
adx_database_name = "ctr-dev-westeu-db"

######################################################################

# EventHub Configuration
eventhub_namespace_name = "ctr-dev-westeu-ehns"
eventhub_name           = "ctr-dev-westeu-eh"
sku_name_eventhub       = "Standard"
sku_tier_eventhub       = "Standard"
partition_count         = 2          # Number of partitions for the EventHub
message_retention       = 7          # Retain messages for 7 days
sku_capacity_eventhub   = 1

######################################################################

# Key Vault Configuration
key_vault_name = "ctr-dev-westeu-kv"
#tenant_id      = "adb53b4f-b05f-4dcb-a2e1-9111380568c3"
secret_name  = "ctr-secret-dev"
secret_value = "ctr-secret-value"

######################################################################

# Application Insights Configuration
app_insights_name = "ctr-dev-westeu-api"

######################################################################

# User Assigned Managed Identity Configuration
identity_name = "ctr-dev-westeu-uami"

######################################################################

# Logic App Standard
#logic_app_name            = "devctr-logic-app"
