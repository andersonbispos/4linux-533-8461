## Exemplos de passagem de valor de variaveis
//default
//$env:TF_VAR_vpc_cidr="192.168.10.0/24"|export TF_VAR_vpc_cidr="192.168.10.0/24"
//terraform.tfvars
//*.auto.tfvars
//terraform plan -var="vpc_cidr=192.168.50.0/25"

variable "default_region" {
    description = "Regiao padrao para provisionar ambientes"
    type = string
    default = "us-east-1"
}

variable "vpc_cidr" {
    description = "Bloco CIDR para ser utilizado ao criar uma VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    description = "Bloco CIDR para ser utilizado ao criar uma VPC"
    type = string
    default = "10.0.0.0/16"
}