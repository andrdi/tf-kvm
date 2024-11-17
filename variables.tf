variable "system_uri" {
  type = string
  default = "qemu:///system"
}

variable "default_pool_path" {
  type = string
  default = "/home/andrey/kvm"
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
