resource "openstack_lb_quota_v2" "lb_quota_v2s" {
  for_each = var.lb_quota_v2s

  project_id     = each.value.project_id
  health_monitor = each.value.health_monitor
  l7_policy      = each.value.l7_policy
  l7_rule        = each.value.l7_rule
  listener       = each.value.listener
  loadbalancer   = each.value.loadbalancer
  member         = each.value.member
  pool           = each.value.pool
  region         = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

