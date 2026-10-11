resource "azuredevops_workitemquery" "workitemqueries" {
  for_each = var.workitemqueries

  name       = each.value.name
  project_id = each.value.project_id
  wiql       = each.value.wiql
  area       = each.value.area
  parent_id  = each.value.parent_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

