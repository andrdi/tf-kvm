variable "system_uri" {
  type = string
  default = "qemu:///system"
}

variable "default_pool_path" {
  type = string
  default = "/home/user/kvm"
}

variable "image_source" {
  type = string
  default = "/home/user/install/iso/rhel-9.5-x86_64-kvm.qcow2"
}

variable "domains" {
  type = list
  default = [
    {
      hostname = "management"
      memory = "1024"
      vcpu = 1
      address = "192.168.123.3"
    }
  ]
}
