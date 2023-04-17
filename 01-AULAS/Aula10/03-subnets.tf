resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = var.subnet1_cidr

  availability_zone = var.subnet1_zona

  tags = {
    Name = format("%s-%s-%s", "subnet_", var.vpc_name, var.subnet1_zona )
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = var.subnet2_cidr

  availability_zone = var.subnet2_zona

  tags = {
    Name = "subnet_terraform_east_1c"
  }
}