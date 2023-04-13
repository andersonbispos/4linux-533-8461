resource "aws_subnet" "subnet_lab_east_1b" {
  vpc_id     = aws_vpc.tf_vpc_lab.id
  cidr_block = "192.168.10.0/24"

  availability_zone = "sa-east-1b"

  tags = {
    Name = "subnet_lab_east_1b"
  }
}

resource "aws_subnet" "subnet_lab_east_1c" {
  vpc_id     = aws_vpc.tf_vpc_lab.id
  cidr_block = "192.168.20.0/24"

  availability_zone = "sa-east-1c"

  tags = {
    Name = "subnet_lab_east_1c"
  }
}