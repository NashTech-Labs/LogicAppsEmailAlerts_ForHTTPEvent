output "logic_app_endpoint" {
  description = "Endpoint URL for triggering the Logic App workflow."
  value       = azurerm_logic_app_workflow.example.triggers[0].outputs.base_url
}
