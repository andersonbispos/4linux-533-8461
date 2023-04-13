resource "aws_internet_gateway" "igw_vpc_lab" {
  vpc_id = aws_vpc.tf_vpc_lab.id

  tags = {
    Name = "igw_vpc_lab"
  }
}

data "aws_route_table" "default" {
  vpc_id = aws_vpc.tf_vpc_lab.id
}

resource "aws_route" "r_terraform_default_route" {
  route_table_id         = data.aws_route_table.default.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_vpc_lab.id
}