resource "aws_subnet" "subnet_lab_east_1b" {
  vpc_id     = "vpc-03e774e7517ff8145"
  cidr_block = "192.168.10.0/24"

  availability_zone = "sa-east-1b"

  tags = {
    Name = "subnet_lab_east_1b"
  }
}