terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "~> 0.6.14"
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
  # uri = "qemu+ssh://<my-kvm-host>/system"
}
