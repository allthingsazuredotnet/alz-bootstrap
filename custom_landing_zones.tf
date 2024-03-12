locals {
  custom_landing_zones = {
    "${var.root_id}-avs" = {
      display_name               = "AVS"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
  }
}