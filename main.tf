resource "hcloud_firewall" "fw" {
  name   = var.name
  labels = var.labels

  dynamic "rule" {
    for_each = var.rules
    content {
      direction   = rule.value["direction"]
      protocol    = rule.value["protocol"]
      port        = rule.value["port"]
      source_ips  = rule.value["source_ips"]
      description = rule.value["description"]
    }
  }

  apply_to {
    label_selector = var.label_selector
  }
}
