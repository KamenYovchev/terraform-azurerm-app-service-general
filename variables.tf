##################################################################################
# VARIABLES
##################################################################################

variable "name" {}

variable "location" {}

variable "resource_group_name" {}

variable "app_service_plan_id" {}


variable "client_affinity_enabled" {
  type = bool
  default = false
}

variable "dotnet_framework_version" {
  description = "framework version of dotnet"
  type = string
  default = "v4.0"
}

variable "scm_type" {
  description = "source code management system"
  type = string
  default = "LocalGit"
}

variable "always_on" {
  type = bool
  default = true
}

variable "management_pipeline_mode" {
  type = string
  default = "Integrated"
}

variable "ftps_state" {
  description = "Does ftps is allowed.Possible options are (Enabled or Disabled)"
  type = string
  default = "Disabled"
}

variable "websocket_enabled" {
  type = bool
  default = false
}

##################################################################################
# LOCALS
##################################################################################

locals {
  env_name = lower(terraform.workspace)

  common_tags = {
    Environment = local.env_name
    Name        = var.name
  }
}