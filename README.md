## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.42.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.42.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_firewall.fw](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_label_selector"></a> [label\_selector](#input\_label\_selector) | Resources the firewall should be assigned to. | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with. | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Network to create (must be unique per project). | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | Configuration of a Rule from this Firewall. | <pre>list(object({<br>    direction   = string<br>    protocol    = string<br>    port        = optional(number)<br>    source_ips  = list(string)<br>    description = optional(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the Firewall. |
| <a name="output_labels"></a> [labels](#output\_labels) | Resource labels. |
| <a name="output_name"></a> [name](#output\_name) | Name of the Firewall. |
