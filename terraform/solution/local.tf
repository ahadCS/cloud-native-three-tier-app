locals {
prefix                 = "devops2-group3-main"
  location               = "West US 2"
  default_node_pool_name = "gr"

  vnet_address_space = ["10.2.0.0/16"]

  subnet_address_prefixes = ["10.2.2.0/24"]

  sql_db = {
    username             = "sqladmin"
    collation            = "SQL_Latin1_General_CP1_CI_AS"
    password             = "Abc123456789**"
    server_version       = "12.0"
    dbsize               = 1
    zone_redundant       = false
    sql_database_name    = "devops2-group3-db"
    sku_name             = "Basic"
    storage_account_type = "Local"

  }




}