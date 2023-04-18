variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar uma VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc_terraform"
}