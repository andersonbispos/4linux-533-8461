resource "aws_subnet" "subnet_terraform_east_1b" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "us-east-1b"

  tags = {
    Name = "subnet_terraform_east_1b"
  }
}

resource "aws_subnet" "subnet_terraform_east_1c" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-1c"

  tags = {
    Name = "subnet_terraform_east_1c"
  }
}