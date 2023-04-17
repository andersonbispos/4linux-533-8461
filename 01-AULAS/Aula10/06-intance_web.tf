resource "aws_instance" "web1" {
  ami           = var.ami_amazon
  instance_type = var.web_size

  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = var.associate_public_ip

  vpc_security_group_ids = [aws_security_group.sg_vpc_terraform.id]

  tags = {
    Name = format("%s-%s", var.web_prefix_name, var.vpc_name)
  }

  user_data = base64encode("#!/bin/bash\n sudo yum install nginx -y; sudo systemctl enable nginx; sudo systemctl start nginx")
}