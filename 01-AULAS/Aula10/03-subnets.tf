resource "aws_subnet" "subnet_terraform_east_1b" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = var.subnet1_cidr

  availability_zone = var.subnet1_zona

  tags = {
    Name = "subnet_terraform_east_1b"
  }
}

resource "aws_subnet" "subnet_terraform_east_1c" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = var.subnet2_cidr

  availability_zone = var.subnet2_zona

  tags = {
    Name = "subnet_terraform_east_1c"
  }
}