resource "aws_instance" "db" {
  ami               = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1)
  instance_type     = "t2.micro"
  availability_zone = local.db_data_zone

  tags = {
    Name = "db"
  }
}