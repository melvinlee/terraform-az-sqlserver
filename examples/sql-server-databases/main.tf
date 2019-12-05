module "sql" {
  source              = "../../"
  resource_group_name = "example"
  name                = "sqlserver1122"
  location            = "southeastasia"
  allow_azure_service = true
  databases = {
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
  tags = {
    Env = "example"
  }
}
