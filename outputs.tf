output "lb_quota_v2s_id" {
  description = "Map of id values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_quota_v2s_health_monitor" {
  description = "Map of health_monitor values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no health_monitor are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.health_monitor if v.health_monitor != null }
}
output "lb_quota_v2s_l7_policy" {
  description = "Map of l7_policy values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no l7_policy are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.l7_policy if v.l7_policy != null }
}
output "lb_quota_v2s_l7_rule" {
  description = "Map of l7_rule values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no l7_rule are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.l7_rule if v.l7_rule != null }
}
output "lb_quota_v2s_listener" {
  description = "Map of listener values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no listener are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.listener if v.listener != null }
}
output "lb_quota_v2s_loadbalancer" {
  description = "Map of loadbalancer values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no loadbalancer are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.loadbalancer if v.loadbalancer != null }
}
output "lb_quota_v2s_member" {
  description = "Map of member values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no member are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.member if v.member != null }
}
output "lb_quota_v2s_pool" {
  description = "Map of pool values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no pool are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.pool if v.pool != null }
}
output "lb_quota_v2s_project_id" {
  description = "Map of project_id values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no project_id are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "lb_quota_v2s_region" {
  description = "Map of region values across all lb_quota_v2s, keyed the same as var.lb_quota_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_lb_quota_v2.lb_quota_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}

