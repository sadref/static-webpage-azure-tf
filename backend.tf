# Cloud terraform
terraform {
  cloud {
    organization = "Surimi_Learn"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
}
