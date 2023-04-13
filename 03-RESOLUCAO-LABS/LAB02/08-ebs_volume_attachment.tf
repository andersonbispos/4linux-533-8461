resource "aws_volume_attachment" "att_ebs_data" {
  device_name = "/dev/sdf"
  volume_id   = aws_vpc.tf_vpc_lab.id
  instance_id = aws_instance.dbserver1.id
}