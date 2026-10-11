output "workitemqueries_id" {
  description = "Map of id values across all workitemqueries, keyed the same as var.workitemqueries except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemqueries_area" {
  description = "Map of area values across all workitemqueries, keyed the same as var.workitemqueries except keys with no area are omitted"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.area if v.area != null && length(v.area) > 0 }
}
output "workitemqueries_name" {
  description = "Map of name values across all workitemqueries, keyed the same as var.workitemqueries except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemqueries_parent_id" {
  description = "Map of parent_id values across all workitemqueries, keyed the same as var.workitemqueries except keys with no parent_id are omitted"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}
output "workitemqueries_project_id" {
  description = "Map of project_id values across all workitemqueries, keyed the same as var.workitemqueries except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "workitemqueries_wiql" {
  description = "Map of wiql values across all workitemqueries, keyed the same as var.workitemqueries except keys with no wiql are omitted"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.wiql if v.wiql != null && length(v.wiql) > 0 }
}

