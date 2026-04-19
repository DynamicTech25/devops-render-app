terraform {
  required_version = ">= 1.0.0"
}

provider "local" {}

resource "local_file" "devops_note" {
  filename = "devops.txt"
  content  = "Hello DevOps! Terraform is working 🚀"
}