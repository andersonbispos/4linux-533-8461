# exemplo de iteracao usando count + lista

/* resource "aws_subnet" "subnets" {

  count = length(var.subnet_zones)

  vpc_id = aws_vpc.vpc_terraform.id

  availability_zone = var.subnet_zones[count.index]
  cidr_block        = var.subnet_faixas[count.index]

  tags = {
    Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, var.subnet_zones[count.index])
  }
} */

# exemplo de iteracao usando for_each + map

resource "aws_subnet" "subnets" {

  for_each = var.map_subnet_defs

  vpc_id = aws_vpc.vpc_terraform.id

  availability_zone = each.key
  cidr_block        = each.value

  tags = {
    Name = format("%s-%s-%s", var.subnet_prefix_name, var.vpc_name, each.key)
  }
}