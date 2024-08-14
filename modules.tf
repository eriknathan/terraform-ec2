module "network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
  meu_ip       = var.meu_ip
  desc_meu_ip  = var.desc_meu_ip
}
