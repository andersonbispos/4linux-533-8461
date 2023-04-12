resource "aws_ebs_volume" "ebs_web_terraform_data" {
  availability_zone = aws_instance.web_vpc_terraform.availability_zone
  size              = 10

  tags = {
    Name = "ebs_web_terraform_data"
  }
}