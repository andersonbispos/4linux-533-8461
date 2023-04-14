resource "aws_instance" "web1" {
  ami               = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1)
  instance_type     = "t2.micro"
  availability_zone = local.db_data_zone

  user_data = local.install_nginx

  tags = {
    Name = "web2"
  }
}

resource "aws_instance" "web2" {
  ami               = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1)
  instance_type     = "t2.micro"
  availability_zone = local.db_data_zone

  user_data = local.install_nginx

  tags = {
    Name = "web2"
  }
}