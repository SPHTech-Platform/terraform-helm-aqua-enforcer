variable "helm_config_defaults" {
  description = "Helm provider default config for aqua security enforcer."
  type        = any
  default = {
    name             = "aqua-helm"
    chart            = "kube-enforcer"
    repository       = "https://helm.aquasec.com"
    version          = "2022.4.12"
    namespace        = "aqua"
    create_namespace = true
    description      = "Aqua security enforcer helm Chart deployment configuration"
  }
}

variable "helm_config" {
  description = "Helm provider config for aqua security enforcer."
  type        = any
  default     = {}
}

variable "enforcer_group_id_prefix" {
  description = "Prefix for group IDs"
  type        = string
  default     = "group-id-prefix"
}

variable "enforcer_version" {
  description = "Enforcer version"
  type        = string
  default     = "2022.4"
}

variable "platform" {
  description = "Orchestration platform name"
  type        = string
  default     = "eks"

  validation {
    condition     = can(regex("^aks$|^eks$|^gke$|^openshift$|^tkg$|^tkgi$|^k8s$|^rancher$|^gs$|^k3s$", var.platform))
    error_message = "Err: invalid platform, must be one of aks|eks|gke|openshift|tkg|tkgi|k8s|rancher|gs|k3s."
  }
}

variable "enabled_express_mode" {
  description = "Install enforcer in EXPRESS MODE or not"
  type        = bool
  default     = true
}

variable "aqua_gateway_endpoint" {
  description = "Aqua Gateway Endpoint"
  type        = string
  default     = "293e75e127-gw.cloud.aquasec.com"
}

variable "aquasec_username" {
  description = "aqua cloud username - Value set in Variables"
  type        = string
  sensitive   = true
}

variable "aquasec_password" {
  description = "aqua cloud password - Value set in Variables"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "Cluster name registered with Aqua in Infrastructure tab"
  type        = string
  default     = "aqua-sec"
}
