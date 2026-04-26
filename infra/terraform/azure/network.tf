resource "azurerm_resource_group" "this" {
  name     = "gridforge-${var.environment}"
  location = var.location
  tags     = { project = "gridforge", environment = var.environment, cloud = "azure" }
}

resource "azurerm_virtual_network" "this" {
  name                = "gridforge-${var.environment}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = [var.vnet_cidr]
}

resource "azurerm_subnet" "aks" {
  name                 = "aks"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [cidrsubnet(var.vnet_cidr, 4, 0)]
}

resource "azurerm_subnet" "data" {
  name                 = "data"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [cidrsubnet(var.vnet_cidr, 4, 1)]
  service_endpoints    = ["Microsoft.Sql","Microsoft.Storage","Microsoft.KeyVault","Microsoft.EventHub"]
}
