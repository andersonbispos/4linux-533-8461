/* resource "aws_internet_gateway" "igw_vpc_terraform" {
  vpc_id = "vpc-00eb0af7d4d09d9f4"

  tags = {
    Name = "igw_vpc_terraform"
  }
}

resource "aws_route" "r_terraform_default_route" {
  route_table_id         = "rtb-0713e1bded7876158"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "igw-07bde12165c98ccab"
} */