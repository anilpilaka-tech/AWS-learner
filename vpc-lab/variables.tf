# Root variables — defaults are exactly the values in the pushed main.tf,
# so the refactor alone changes nothing. Change a default (or pass
# -var) and the module builds a different VPC with the same shape.

variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC — same as Terraform lab-vpc."
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "AZs, one per public/private subnet pair (us-east-1, old account)."
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnets, one per AZ — same as lab-public-1/2."
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnets, one per AZ — same as lab-private-1/2."
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "name_prefix" {
  type        = string
  description = "Prefix for every Name tag: lab-vpc, lab-public-1, ..."
  default     = "lab"
}

variable "enable_dns_support" {
  type        = bool
  description = "VPC DNS support — true in the pushed main.tf."
  default     = true
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "VPC DNS hostnames — FALSE in the pushed main.tf. Preserved exactly, not fixed."
  default     = false
}
