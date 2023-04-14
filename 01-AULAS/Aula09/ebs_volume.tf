resource "aws_ebs_volume" "ebs_web_terraform_data" {
  availability_zone = local.db_data_zone
  size              = 10

  tags = {
    Name = "ebs_web_terraform_data"
  }
}

resource "aws_volume_attachment" "att_ebs_web_terraform_data" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs_web_terraform_data.id
  instance_id = aws_instance.db.id
}