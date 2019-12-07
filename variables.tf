variable "name" {
  description = "(Required) The name of the Azure SQL Server to create."
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "(Required) Name of the resource group where to create the Azure SQL Server"
}


variable "location" {
  type        = string
  description = "(Required) Define the region where the Azure SQL Server will be created"
}

variable "databases_map" {
    description = "(Optional) Create one or more Azure SQL Database"
    default = {}
}

variable "allow_azure_service" {
  type        = bool
  description = "(Optional) Allow Azure SQL Database server accepts communication from any subnet inside the Azure boundary"
  default     = false
}


variable "tags" {
  description = "(Required) Map of tags for the deployment"
}
