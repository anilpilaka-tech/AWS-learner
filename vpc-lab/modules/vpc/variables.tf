variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC."
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "AZs, one per public/private subnet pair."
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnets, one per AZ."
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnets, one per AZ."
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "name_prefix" {
  type        = string
  description = "Prefix for every Name tag: <prefix>-vpc, <prefix>-public-1, ..."
  default     = "lab"
}

variable "enable_dns_support" {
  type        = bool
  description = "VPC DNS support."
  default     = true
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "VPC DNS hostnames. False matches the pushed main.tf."
  default     = false
}
