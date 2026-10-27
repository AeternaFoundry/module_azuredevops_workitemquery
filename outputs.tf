output "workitemqueries_id" {
  description = "Map of id values across all workitemqueries, keyed the same as var.workitemqueries"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.id }
}
output "workitemqueries_area" {
  description = "Map of area values across all workitemqueries, keyed the same as var.workitemqueries"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.area }
}
output "workitemqueries_name" {
  description = "Map of name values across all workitemqueries, keyed the same as var.workitemqueries"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.name }
}
output "workitemqueries_parent_id" {
  description = "Map of parent_id values across all workitemqueries, keyed the same as var.workitemqueries"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.parent_id }
}
output "workitemqueries_project_id" {
  description = "Map of project_id values across all workitemqueries, keyed the same as var.workitemqueries"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.project_id }
}
output "workitemqueries_wiql" {
  description = "Map of wiql values across all workitemqueries, keyed the same as var.workitemqueries"
  value       = { for k, v in azuredevops_workitemquery.workitemqueries : k => v.wiql }
}

