//$env:TF_VAR_vpc_cidr="192.168.10.0/24"

variable "vpc_cidr" {
    description = "Bloco CIDR para ser utilizado ao criar uma VPC"
    type = string
    default = "10.0.0.0/16"
}