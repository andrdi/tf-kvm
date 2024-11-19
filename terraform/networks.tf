resource "libvirt_network" "kvm-internal1" {
  name      = "kvm-internal1"
  mode      = "nat"
  addresses = ["192.168.123.0/24"]
  dhcp {
      enabled = true
  }
}
