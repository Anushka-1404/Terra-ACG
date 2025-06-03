terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "6.30.0"
    }
  }
}

provider "google" {
    project = "terraform00-442312"
    region = "us-central1"
    zone = "us-central1-a"
    credentials = file("C:/Users/ANUSHKAG/Downloads/Keys.json")
}

resource "google_compute_network" "compute_network" {
    name = "vpc-network"
}

