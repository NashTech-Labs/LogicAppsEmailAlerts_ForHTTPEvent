provider "azurerm" {
  features {}
}

resource "azurerm_logic_app_workflow" "example" {
  name                = var.logic_app_name
  location            = azurerm_resource_group.logic_app_rg.location
  resource_group_name = azurerm_resource_group.logic_app_rg.name
}

resource "azurerm_logic_app_trigger_http_request" "example" {
  name         = "some-http-trigger"
  logic_app_id = azurerm_logic_app_workflow.example.id
  schema       = file("${path.module}/logic_app_def.json")
}

output "logic_app_endpoint" {
  value = azurerm_logic_app_workflow.example.triggers[0].outputs.base_url
}
