resource "aws_volume_attachment" "att_ebs_web_terraform_data" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs_web_terraform_data.id
  instance_id = aws_instance.web_vpc_terraform.id
}