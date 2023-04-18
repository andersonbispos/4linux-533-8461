module "rede" {
  source = "./modulos/vpc"

  vpc_cidr = "192.168.10.0/24"
}