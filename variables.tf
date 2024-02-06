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
