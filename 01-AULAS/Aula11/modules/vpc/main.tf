resource "aws_vpc" "vpc_terraform" {
  cidr_block = var.vpc_cidr

  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_internet_gateway" "igw_vpc_terraform" {
  vpc_id = aws_vpc.vpc_terraform.id

  tags = {
    Name = "igw_vpc_terraform"
  }
}

data "aws_route_table" "default" {
  vpc_id = aws_vpc.vpc_terraform.id
}

resource "aws_route" "r_terraform_default_route" {
  route_table_id         = data.aws_route_table.default.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_vpc_terraform.id
}