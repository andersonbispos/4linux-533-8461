# exemplos de código de instancia

resource "aws_instance" "web" {
  /* ami           = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1) */
  ami           = "ami-0fec2c2e2017f4e7b" // <- ami Debian 11 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name   = "web"
    treina = "4linux"
  }
}