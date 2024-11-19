resource_group_name              = "ctr-qa1-westeu-rg"
location                         = "West Europe"
environment                      = "pre-pod-octane" # Specify the environment (dev, test, prod, etc.)
subscription_id                  = "a1fd2c95-863c-4813-929e-e73460c55005"
tenant_id                        = "deb87405-c3fd-48f8-af81-65ca6d8d8e57"
client_id                        = "1a9aba57-00ca-4abd-a665-60597275db77"


######################################################################

# Storage Account Configuration
storage_account_name = "ctrqa1westeusa"
container_name       = "qa1-state"

######################################################################

# Azure Function App Configuration
app_service_plan_name = "ctr-qa1-westeu-asp"
function_app_name     = "ctr-qa1-westeu-app"
package_url           = "https://example.com/dev-functions-package.zip"

######################################################################

# APIM Configuration
api_management_name       = "ctr-qa1-westeu-apim"
publisher_name            = "Dev Publisher"
publisher_email           = "v-vaibhav.mishra@circlek.com"
user_assigned_identity_id = "/subscriptions/a1fd2c95-863c-4813-929e-e73460c55005/resourceGroups/ctr-rg-sandbox/providers/Microsoft.ManagedIdentity/userAssignedIdentities/ctrmanagedidentity"
sku_name                  = "Developer_1"

######################################################################

# Azure Data Explorer (ADX) Configuration
adx_cluster_name  = "ctr-qa1-westeu-adxc"
adx_database_name = "ctr-qa1-westeu-db"

######################################################################

# EventHub Configuration
eventhub_namespace_name = "ctr-qa1-westeu-ehns"
eventhub_name           = "ctr-qa1-westeu-eh"
sku_name_eventhub       = "Standard"
sku_tier_eventhub       = "Standard"
partition_count         = 2          # Number of partitions for the EventHub
message_retention       = 7          # Retain messages for 7 days
sku_capacity_eventhub   = 1

######################################################################

# Key Vault Configuration
key_vault_name = "ctr-qa1-westeu-kv"
#object_id      = "a32b7793-6e41-4aaa-bb86-55741bd2cc99" # Replace with the actual Object ID
#secret_name   = "ctr-secret-dev"
#secret_value  = "ctr-secret-value"

######################################################################

# Application Insights Configuration
app_insights_name = "ctr-qa1-westeu-api"

######################################################################

# User Assigned Managed Identity Configuration
identity_name = "ctr-qa1-westeu-uami"
scope = "/subscriptions/a1fd2c95-863c-4813-929e-e73460c55005/resourceGroups/ctr-qa1-westeu-rg"
#user_assigned_identity_client_id = "e28d1a5f-2a98-4be8-8a70-2cb3f4dcc9d5"
#user_assigned_identity_object_id = "a32b7793-6e41-4aaa-bb86-55741bd2cc99"
#aad_group_object_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

######################################################################

# Logic App Standard
#logic_app_name            = "devctr-logic-app"
