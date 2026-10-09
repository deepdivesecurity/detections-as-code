locals {
  rule_files = fileset("${path.module}/rules/generated", "*.yaml")
  rules = {
    for f in local.rule_files :
    trimsuffix(f, ".yaml") => yamldecode(file("${path.module}/rules/generated/${f}"))
  }
}

resource "azurerm_sentinel_alert_rule_scheduled" "sigma" {
  for_each = local.rules

  name                       = each.key
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.this.id
  display_name               = each.value.title
  description                = try(each.value.description, null)
  severity                   = each.value.severity
  enabled                    = true

  query               = each.value.query
  query_frequency     = "PT1H"
  query_period        = "PT1H"
  trigger_operator    = "GreaterThan"
  trigger_threshold   = 0
  suppression_enabled = false

  tactics    = try(each.value.tactics, [])
  techniques = try(each.value.techniques, [])

  incident {
    create_incident_enabled = true
    grouping {
      enabled = true
    }
  }
}
