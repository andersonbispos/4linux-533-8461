module "rede" {
  source = "./modulos/vpc"

  vpc_cidr = "192.168.10.0/24"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = module.rede.vpc_id
  cidr_block = "192.168.10.0/25"

  availability_zone = "us-east-1c"
}

resource "aws_instance" "vm1" {
  ami               = "ami-06e46074ae430fba6" # <- amazonl linux us-east1
  instance_type     = "t2.micro"

  subnet_id = aws_subnet.subnet1.id

  vpc_security_group_ids = [ module.rede.sg_id ]

  tags = {
    Name = "vm1"
  }
}