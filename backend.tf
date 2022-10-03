

terraform {
  backend "remote" {
    organization = "rezamaleki"

    workspaces {
      name = "test2"
    }
  }
}
