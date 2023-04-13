resource "aws_ebs_volume" "ebs_data" {
  availability_zone = aws_instance.db_vcp_terraform.availability_zone
  size              = 10

  tags = {
    Name = "ebs_web_terraform_data"
  }
}