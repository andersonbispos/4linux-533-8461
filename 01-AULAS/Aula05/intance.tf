# exemplos de código de instancia

resource "aws_instance" "web" {
  /* ami           = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1) */
  ami               = "ami-0fec2c2e2017f4e7b" // <- ami Debian 11 (us-east-1)
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"

  /* security_groups = ["allow_default_ports"] */ # <- acarreta em uma alteracao destrutiva
  vpc_security_group_ids = ["sg-0ace2838c04dcfcb5"]

  tags = {
    Name = "web"
  }
}