terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  credentials = file("xlsol-homolog-3d6947a0c9a3.json")
  region      = var.region
  project     = var.project
}

module "cdn"{
 source = "./modules/cdn"
}



