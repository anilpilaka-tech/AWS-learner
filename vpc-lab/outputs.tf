# Root outputs — forwarded from the module, so the SSM + Secrets lab
# and any later lab can read the VPC and subnet IDs from state.

output "vpc_id" {
  description = "ID of lab-vpc (compare with the pushed base: vpc-016dd4f1529cc5394)."
  value       = module.lab_vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of lab-public-1 and lab-public-2."
  value       = module.lab_vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of lab-private-1 and lab-private-2."
  value       = module.lab_vpc.private_subnet_ids
}

output "internet_gateway_id" {
  description = "ID of lab-igw."
  value       = module.lab_vpc.internet_gateway_id
}

output "public_route_table_id" {
  description = "ID of lab-public-rt (0.0.0.0/0 -> IGW)."
  value       = module.lab_vpc.public_route_table_id
}
