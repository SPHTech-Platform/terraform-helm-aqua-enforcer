locals {
  helm_config = merge(
    var.helm_config_defaults,
    var.helm_config,
    { values = local.helm_values_defaults }
  )

  helm_values_defaults = [templatefile("${path.module}/templates/values.yaml", {
    kube_enforcer_token = aquasec_enforcer_groups.kube_enforcer.token,
    enforcer_token      = aquasec_enforcer_groups.agent.token,
    enforcer_version    = var.enforcer_version
  })]
}

resource "aquasec_enforcer_groups" "agent" {
  group_id = "${var.enforcer_group_id_prefix}-agent"
  type     = "agent"
  enforce  = true
  orchestrator {
    type      = "kubernetes"
    namespace = var.helm_config_defaults.namespace
  }
}

resource "aquasec_enforcer_groups" "kube_enforcer" {
  group_id = "${var.enforcer_group_id_prefix}-kube-enforcer"
  type     = "kube_enforcer"
  enforce  = true
  orchestrator {
    type      = "kubernetes"
    namespace = var.helm_config_defaults.namespace
  }
}

module "enforcers" {
  source  = "SPHTech-Platform/release/helm"
  version = "~> 0.1.0"

  helm_config = local.helm_config
}
