variable "workitemqueries" {
  description = <<EOT
Map of workitemqueries, attributes below
Required:
    - name
    - project_id
    - wiql
Optional:
    - area
    - parent_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name       = string
    project_id = string
    wiql       = string
    area       = optional(string)
    parent_id  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemqueries : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemqueries : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemqueries : (
        v.parent_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.parent_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemqueries : (
        v.area == null || (contains(["Shared Queries", "My Queries"], v.area))
      )
    ])
    error_message = "must be one of: \"Shared Queries\", \"My Queries\""
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemqueries : (
        length(v.wiql) >= 1 && length(v.wiql) <= 32000
      )
    ])
    error_message = "must be between 1 and 32000 characters"
  }
}

