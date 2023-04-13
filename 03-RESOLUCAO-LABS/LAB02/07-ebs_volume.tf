/* resource "aws_ebs_volume" "ebs_data" {
  availability_zone = aws_instance.dbserver1.availability_zone
  size              = 30
  type              = "gp3"

  tags = {
    Name = "ebs_db_data"
  }
} */