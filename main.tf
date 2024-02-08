module "enterprise-scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "5.0.3"

  disable_telemetry = true

  default_location = var.default_location
  root_parent_id   = data.azurerm_client_config.core.tenant_id

  deploy_corp_landing_zones   = true
  deploy_management_resources = true
  subscription_id_management  = data.azurerm_client_config.core.subscription_id
  deploy_online_landing_zones = true
  root_id                     = var.root_id
  root_name                   = var.root_name
  library_path                = "${path.root}/lib"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }
}
