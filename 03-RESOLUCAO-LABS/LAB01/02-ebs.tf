resource "aws_ebs_volume" "disco" {
  availability_zone = "us-east-1a"
  size              = 10

  type = "gp3"

  tags = {
    Name = "disco"
  }
}