# workflow padrao

terraform init -> write code -> terraform plan -> terraform apply ~> terraform destroy

terraform init ~> write code ~> terraform fmt ~> terraform validate -> terraform plan -> terraform apply ~> terraform destroy

# AWS Hierarquia

- [root account]
    - prod    (branch)
    - homolog (branch)
    - dev     (branch)