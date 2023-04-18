output "vpc_id" {
  description = "vpc_id"
  value       = aws_vpc.vpc_terraform.id
}

output "vpc_net" {
  description = "vpc_net"
  value       = aws_vpc.vpc_terraform.cidr_block
}

output "vpc_default_route_table_id" {
  description = "vpc_default_route_table_id"
  value       = aws_vpc.vpc_terraform.default_route_table_id
}

output "igw_id" {
  description = "igw_id"
  value       = aws_internet_gateway.igw_vpc_terraform.id
}

output "sg_id" {
  description = "sg_id"
  value       = aws_security_group.sg_vpc_terraform.id
}

/* output "firewall_rule_name" {
  description = "firewall_rule_name"
  value       = google_compute_firewall.allow_default_ports.name
}

output "firewall_rule_selflink" {
  description = "firewall_rule_selflink"
  value       = google_compute_firewall.allow_default_ports.self_link
} */