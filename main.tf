module "enterprise-scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "5.1.0"

  disable_telemetry = true

  default_location = var.default_location
  root_parent_id   = data.azurerm_client_config.core.tenant_id

  deploy_corp_landing_zones        = true
  deploy_management_resources      = true
  deploy_connectivity_resources    = true
  configure_management_resources   = local.configure_management_resources
  subscription_id_management       = data.azurerm_client_config.core.subscription_id
  subscription_id_connectivity     = data.azurerm_client_config.core.subscription_id
  configure_connectivity_resources = local.configure_connectivity_resources
  deploy_online_landing_zones      = true
  root_id                          = var.root_id
  root_name                        = var.root_name
  library_path                     = "${path.root}/lib"
  custom_landing_zones             = local.custom_landing_zones

  archetype_config_overrides = {
    root = {
      archetype_id = "es_root"
      parameters = {
        SQLDBsLogAnalyticsEffect = {
          effect = "Disabled"
        }
      }
      access_control = {}
    }
  }

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }
}
