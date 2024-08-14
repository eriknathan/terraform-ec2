variable "cidr_block" {
  type        = string
  description = "Bloco CIDR de rede a ser usado para a VPC."
}

variable "project_name" {
  type        = string
  description = "Nome do projeto para usar como nome dos recursos"
}

variable "tags" {
  type        = map(any)
  description = "Tags a serem adicionadas aos recursos da AWS"
}

variable "meu_ip" {
  type        = string
  description = "IP para liberar acesso via ssh no SG"
}
