resource "aws_vpc" "vpc_terraform" {
  cidr_block = var.map_vpc_cidr[terraform.workspace]

  tags = {
    "Name" = format("%s-%s", var.vpc_prefix, terraform.workspace)
  }
}