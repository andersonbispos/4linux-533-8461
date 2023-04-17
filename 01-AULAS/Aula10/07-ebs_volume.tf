resource "aws_ebs_volume" "ebs_data" {
  availability_zone = local.db_data_zone
  size              = var.db_disk_size

  tags = {
    Name = format("%s-%s-%s", local.db_disk_prefix_name, "disk", var.vpc_name)
  }
}