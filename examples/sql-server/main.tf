module "sql" {
  source              = "../../"
  resource_group_name = "example"
  name                = "sqlserver4433"
  location            = "southeastasia"
  allow_azure_service = true
  tags = {
    Env = "example"
  }
}
