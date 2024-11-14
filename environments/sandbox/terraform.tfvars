resource_group_name              = "ctr-dev-westeu-rg"
location                         = "West Europe"
environment                      = "Development" # Specify the environment (dev, test, prod, etc.)
subscription_id                  = "2ef25ed3-e720-486d-b108-694985080ca7"
tenant_id                        = "adb53b4f-b05f-4dcb-a2e1-9111380568c3"
client_id                        = "d8261153-061a-4582-b9e2-2b9325595332"
use_oidc                         = false
use_msi                          = true



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
tenant_id      = "adb53b4f-b05f-4dcb-a2e1-9111380568c3"
object_id      = "a32b7793-6e41-4aaa-bb86-55741bd2cc99" # Replace with the actual Object ID
#secret_name   = "ctr-secret-dev"
#secret_value  = "ctr-secret-value"

######################################################################

# Application Insights Configuration
app_insights_name = "ctr-dev-westeu-api"

######################################################################

# User Assigned Managed Identity Configuration
identity_name = "ctr-dev-westeu-uami"
scope = "/subscriptions/2ef25ed3-e720-486d-b108-694985080ca7/resourceGroups/ctr-dev-westeu-rg0511"
user_assigned_identity_client_id = "e28d1a5f-2a98-4be8-8a70-2cb3f4dcc9d5"
user_assigned_identity_object_id = "a32b7793-6e41-4aaa-bb86-55741bd2cc99"
#aad_group_object_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"


######################################################################

# Logic App Standard
#logic_app_name            = "devctr-logic-app"
