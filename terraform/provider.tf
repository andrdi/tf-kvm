terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.14"
    }

    local = {
      source = "hashicorp/local"
      version = ">= 2.0.0"
    }
  }
}

provider "libvirt" {
  uri = var.system_uri
}
