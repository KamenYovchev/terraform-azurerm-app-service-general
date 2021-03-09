
resource "azurerm_app_service" "app_service" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  tags                = local.common_tags
  client_affinity_enabled = var.client_affinity_enabled

  site_config {
    dotnet_framework_version = var.dotnet_framework_version
    scm_type = var.scm_type
    always_on = var.always_on
    managed_pipeline_mode = var.management_pipeline_mode
    ftps_state = var.ftps_state
    websockets_enabled = var.websocket_enabled
    cors {
      allowed_origins     = ["*"]
    }
  }
}
