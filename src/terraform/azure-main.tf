resource "azurerm_resource_group" "main" {
  name     = "rg-${var.APPLICATION_NAME}-${var.ENVIRONMENT_NAME}"
  location = var.LOCATION
}