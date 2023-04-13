resource "aws_instance" "web1" {
  ami           = "ami-0b7af114fb404cd23" # <- ami Ubuntu 22.04 (sa-east-1)
  instance_type = "t3.micro"

  subnet_id                   = aws_subnet.subnet_lab_east_1b.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.sg_allow_default_ports.id,
                            aws_security_group.sg_allow_http.id]

  tags = {
    Name = "web1"
  }

  user_data = base64encode("#!/bin/bash\n sudo apt update; sudo apt install nginx -y")

  depends_on = [
    aws_instance.dbserver1,
    aws_volume_attachment.att_ebs_data
  ]

}

resource "aws_instance" "web2" {
  ami           = "ami-0b7af114fb404cd23" # <- ami Ubuntu 22.04 (sa-east-1)
  instance_type = "t3.micro"

  subnet_id                   = aws_subnet.subnet_lab_east_1c.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.sg_allow_default_ports.id,
                            aws_security_group.sg_allow_http.id]

  tags = {
    Name = "web2"
  }

  user_data = base64encode("#!/bin/bash\n sudo apt update; sudo apt install nginx -y")

  depends_on = [
    aws_instance.dbserver1,
    aws_volume_attachment.att_ebs_data
  ]

}