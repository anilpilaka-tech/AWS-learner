terraform {
  backend "s3" {
    bucket       = "anil-terraform-state-709532818500"
    key          = "lab-vpc/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
