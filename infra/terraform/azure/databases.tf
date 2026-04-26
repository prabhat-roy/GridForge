resource "azurerm_private_dns_zone" "pg" {
  name                = "gridforge.postgres.database.azure.com"
  resource_group_name = azurerm_resource_group.this.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "pg" {
  name                  = "gridforge-${var.environment}"
  resource_group_name   = azurerm_resource_group.this.name
  private_dns_zone_name = azurerm_private_dns_zone.pg.name
  virtual_network_id    = azurerm_virtual_network.this.id
}

resource "random_password" "pg" { length = 32  special = false }

resource "azurerm_postgresql_flexible_server" "this" {
  name                          = "gridforge-${var.environment}"
  resource_group_name           = azurerm_resource_group.this.name
  location                      = azurerm_resource_group.this.location
  version                       = var.pg_version
  administrator_login           = "gridforge"
  administrator_password        = random_password.pg.result
  delegated_subnet_id           = azurerm_subnet.data.id
  private_dns_zone_id           = azurerm_private_dns_zone.pg.id
  sku_name                      = var.pg_sku
  storage_mb                    = var.pg_storage_mb
  zone                          = "1"
  high_availability { mode = "ZoneRedundant"  standby_availability_zone = "2" }
  backup_retention_days         = 14
  geo_redundant_backup_enabled  = true
}

resource "azurerm_redis_cache" "this" {
  name                 = "gridforge-${var.environment}"
  resource_group_name  = azurerm_resource_group.this.name
  location             = azurerm_resource_group.this.location
  capacity             = var.redis_capacity
  family               = "P"
  sku_name             = var.redis_sku_name
  non_ssl_port_enabled = false
  minimum_tls_version  = "1.2"
}

resource "azurerm_eventhub_namespace" "kafka" {
  name                = "gridforge-${var.environment}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  sku                 = "Standard"
  capacity            = 2
  kafka_enabled       = true
}
