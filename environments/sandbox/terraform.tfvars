resource_group_name = "ctr-dev-cc-rg"
location            = "Canada Central"
environment         = "Development" # Specify the environment (dev, test, prod, etc.)
subscription_id     = "a1fd2c95-863c-4813-929e-e73460c55005"
tenant_id           = "deb87405-c3fd-48f8-af81-65ca6d8d8e57"


######################################################################

# Storage Account Configuration
storage_account_name = "ctrdevccsa"
container_name       = "dev-state"

######################################################################

# Azure Function App Configuration
app_service_plan_name = "ctr-dev-cc-asp"
function_app_name     = "ctr-dev-cc-app"
package_url           = "https://example.com/dev-functions-package.zip"

######################################################################

# APIM Configuration
api_management_name       = "ctr-dev-cc-apim"
publisher_name            = "Dev Publisher"
publisher_email           = "v-vaibhav.mishra@circlek.com"
user_assigned_identity_id = "/subscriptions/a1fd2c95-863c-4813-929e-e73460c55005/resourceGroups/ctr-rg-sandbox/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ctrmanagedidentity"
sku_name_apim             = "Developer"
sku_capacity_apim         = 1

######################################################################

# Azure Data Explorer (ADX) Configuration
adx_cluster_name  = "ctr-dev-cc-adxc"
adx_database_name = "ctr-dev-cc-db"

######################################################################

# EventHub Configuration
eventhub_namespace_name = "ctr-dev-cc-ehns"
eventhub_name           = "ctr-dev-cc-eh"
sku_name_eventhub       = "Standard"
sku_tier_eventhub       = "Standard"
partition_count         = 2          # Number of partitions for the EventHub
message_retention       = 7          # Retain messages for 7 days

######################################################################

# Key Vault Configuration
key_vault_name = "ctr-dev-cc-kv"
#tenant_id      = "adb53b4f-b05f-4dcb-a2e1-9111380568c3"
secret_name  = "ctr-secret-dev"
secret_value = "ctr-secret-value"

######################################################################

# Application Insights Configuration
app_insights_name = "ctr-dev-cc-api"

######################################################################

# Managed Identity Configuration
identity_name = "ctr-dev-cc-userassignedidentity"

######################################################################

# Logic App Standard
#logic_app_name            = "devctr-logic-app"
