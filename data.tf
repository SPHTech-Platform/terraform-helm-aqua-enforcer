data "aquasec_enforcer_groups" "agent" {
  group_id = "Default"
}

data "aquasec_enforcer_groups" "kube_enforcer" {
  group_id = "default kube enforcer group"
}
