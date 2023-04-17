resource "aws_subnet" "subnet0" {
  vpc_id = aws_vpc.vpc_terraform.id

  //usando variaveis individuais
  //availability_zone = var.subnet1_zona
  // cidr_block = var.subnet1_cidr

  //usando lista
  availability_zone = var.subnet_zones[0]
  cidr_block = var.subnet_faixas[0]

  tags = {
    //Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, var.subnet1_zona)
    Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, var.subnet_zones[0])
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc_terraform.id

  availability_zone = var.subnet_zones[1]
  cidr_block = var.subnet_faixas[1]

  tags = {
    Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, var.subnet_zones[1])
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc_terraform.id

  availability_zone = var.subnet_zones[2]
  cidr_block = var.subnet_faixas[2]

  tags = {
    Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, var.subnet_zones[2])
  }
}