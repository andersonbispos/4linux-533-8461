output "vpc_id" {
  description = "vpc_id"
  value       = aws_vpc.vpc_terraform.id
}

output "sg_id" {
  description = "sg_id"
  value       = aws_security_group.sg_vpc_terraform.id
}