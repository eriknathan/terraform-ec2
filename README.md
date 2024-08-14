# terraform-ec2
Código Terraform para criar uma instância EC2 e toda a rede necessária para acessá-la pela porta 22.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.arcanjo_ec2](https://registry.terraform.io/providers/hashicorp/aws/5.61.0/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Bloco CIDR de rede a ser usado para a VPC. | `string` | n/a | yes |
| <a name="input_desc_meu_ip"></a> [desc\_meu\_ip](#input\_desc\_meu\_ip) | Descrição do Ip Atrelado | `string` | n/a | yes |
| <a name="input_instance_ami"></a> [instance\_ami](#input\_instance\_ami) | AMI da Instancia | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Nome da Chave | `string` | n/a | yes |
| <a name="input_key_path"></a> [key\_path](#input\_key\_path) | Caminho da Chave | `string` | n/a | yes |
| <a name="input_meu_ip"></a> [meu\_ip](#input\_meu\_ip) | IP para liberar acesso via ssh no SG | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nome do projeto para usar como nome dos recursos | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
<!-- END_TF_DOCS -->