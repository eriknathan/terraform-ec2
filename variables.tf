variable "cidr_block" {
  type        = string
  description = "Bloco CIDR de rede a ser usado para a VPC."
}

variable "project_name" {
  type        = string
  description = "Nome do projeto para usar como nome dos recursos"
}

variable "instance_ami" {
  type        = string
  description = "AMI da Instancia"
}

variable "key_name" {
  type        = string
  description = "Nome da Chave"
}

variable "key_path" {
  type        = string
  description = "Caminho da Chave"
}

variable "meu_ip" {
  type        = string
  description = "IP para liberar acesso via ssh no SG"
}

variable "desc_meu_ip" {
  type        = string
  description = "Descrição do Ip Atrelado"
}

