resource "aws_subnet" "subnets" {

  count = 2

  vpc_id = aws_vpc.vpc_terraform.id

  availability_zone = var.subnet_zones[count.index]
  cidr_block = var.subnet_faixas[count.index]

  tags = {
    Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, var.subnet_zones[count.index])
  }
}