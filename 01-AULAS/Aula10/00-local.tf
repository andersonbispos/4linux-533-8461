locals {
  db_data_zone  = "us-east-1c"
  install_nginx = "base64encode('#!/bin/bash\n sudo yum install nginx -y; sudo systemctl enable nginx; sudo systemctl start nginx')"

  common_tags = {
    environment = "aula"
    treina      = "4linux"
    terraform   = "yes"
  }
}