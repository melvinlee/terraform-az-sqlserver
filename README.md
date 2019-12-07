# Create Azure SQL Server

Reference the module to a specific version (recommended):

```sh
module "sql_server" {
    source = "git://github.com/melvinlee/terraform-az-sqlserver.git?ref=v0.1"
    name = var.name
    location = var.location
    resource_group_name = var.resource_group_name
    ...
}
```

Or get the latest version

```sh
source = "git://github.com/melvinlee/terraform-az-sqlserver.git?ref==vlatest"
```

# Parameters

## name

```sh
variable "name" {
  description = "(Required) The name of the Azure SQL Server to create."
  type        = string
}
```

## resource_group_name

```sh
variable "resource_group_name" {
  type        = string
  description = "(Required) Name of the resource group where to create the Azure SQL Server"
}
```

## location
```sh
variable "location" {
    type = string
    description = "(Required) Define the region where the Azure SQL Server will be created"
}
```

## databases_map
```sh
variable "databases_map" {
    description = "(Optional) Create one or more Azure SQL Database"
    default = {}
}
```

Example: To create one than one databases

```sh
databases_map = {
    database_1 = {
      name      = "db1-1"
      collation = "SQL_LATIN1_GENERAL_CP1_CS_AS"
      edition   = "Standard"
    },
    database_2 = {
      name      = "db-2"
      collation = "SQL_LATIN1_GENERAL_CP1_CS_AS"
      edition   = "Standard"
    }
  }
```

## allow_azure_service
```sh
variable "allow_azure_service" {
    type = bool
    description = "(Optional) Allow Azure SQL Database server accepts communication from any subnet inside the Azure boundary"
    default = false
}
```

## tags
```sh
variable "tags" {
    description = "(Required) Map of tags for the deployment"
}
```