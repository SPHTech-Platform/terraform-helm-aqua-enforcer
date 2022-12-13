<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aquasec"></a> [aquasec](#requirement\_aquasec) | >= 0.8.18 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.7.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aquasec"></a> [aquasec](#provider\_aquasec) | >= 0.8.18 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_enforcers"></a> [enforcers](#module\_enforcers) | SPHTech-Platform/release/helm | ~> 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aquasec_enforcer_groups.agent](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/resources/enforcer_groups) | resource |
| [aquasec_enforcer_groups.kube_enforcer](https://registry.terraform.io/providers/aquasecurity/aquasec/latest/docs/resources/enforcer_groups) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enforcer_group_id_prefix"></a> [enforcer\_group\_id\_prefix](#input\_enforcer\_group\_id\_prefix) | Prefix for group IDs | `string` | `"group-id-prefix"` | no |
| <a name="input_enforcer_version"></a> [enforcer\_version](#input\_enforcer\_version) | Enforcer version | `string` | `"2022.4"` | no |
| <a name="input_helm_config"></a> [helm\_config](#input\_helm\_config) | Helm provider config for aqua security enforcer. | `any` | `{}` | no |
| <a name="input_helm_config_defaults"></a> [helm\_config\_defaults](#input\_helm\_config\_defaults) | Helm provider default config for aqua security enforcer. | `any` | <pre>{<br>  "chart": "kube-enforcer",<br>  "create_namespace": true,<br>  "description": "Aqua security enforcer helm Chart deployment configuration",<br>  "name": "aqua-helm",<br>  "namespace": "aqua",<br>  "repository": "https://helm.aquasec.com",<br>  "version": "2022.4.12"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
