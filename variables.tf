variable "lb_quota_v2s" {
  description = <<EOT
Map of lb_quota_v2s, attributes below
Required:
    - project_id
Optional:
    - health_monitor
    - l7_policy
    - l7_rule
    - listener
    - loadbalancer
    - member
    - pool
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    project_id     = string
    health_monitor = optional(number)
    l7_policy      = optional(number)
    l7_rule        = optional(number)
    listener       = optional(number)
    loadbalancer   = optional(number)
    member         = optional(number)
    pool           = optional(number)
    region         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

