resource "aws_volume_attachment" "att_ebs_data" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs_data.id
  instance_id = aws_instance.db_vcp_terraform.id
}