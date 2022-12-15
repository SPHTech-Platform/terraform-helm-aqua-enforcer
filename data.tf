data "aquasec_enforcer_groups" "agent" {
  group_id = "bt-uat-agent"
}

data "aquasec_enforcer_groups" "kube_enforcer" {
  group_id = "bt-uat-kube-enforcer"
}
