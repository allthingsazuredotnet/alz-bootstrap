variable "default_location" {
  description = "The location for Azure resources. (e.g 'uksouth')|1|azure_location"
  type        = string
}

variable "root_id" {
  description = "The root id is the identity for the root management group and a prefix applied to all management group identities|5|azure_name"
  type        = string
  default     = "es"
}

variable "root_name" {
  description = "The display name for the root management group|6|azure_name"
  type        = string
  default     = "Enterprise-Scale"
}

variable "log_retention_in_days" {
  type    = number
  default = 30
}

variable "security_alerts_email_address" {
  type    = string
  default = "security@allthingsazure.net"
}

variable "management_resources_location" {
  type    = string
  default = "uksouth"
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    deployedBy = "allthingsazure.net"
  }
}
