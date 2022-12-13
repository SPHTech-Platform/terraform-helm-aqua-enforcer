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
