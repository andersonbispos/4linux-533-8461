resource "aws_vpc" "tf_vpc_lab" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "tf_vpc_lab"
  }
}