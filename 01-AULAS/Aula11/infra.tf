module "rede" {
  source = "./modulos/vpc"

  vpc_cidr = "192.168.10.0/24"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = module.rede.vpc_id
  cidr_block = "192.168.10.0/25"

  availability_zone = "us-east-1c"
}
