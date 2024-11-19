# Local test virtual environment with terraform and cloud-init on the local kvm hypervisor

### 1. Fix apparmor on Ubuntu (24.04) to use a custom volume pool

Update apparmor template (Replace <user> to a real username).

```
$ cat /etc/apparmor.d/libvirt/TEMPLATE.qemu 
#
# This profile is for the domain whose UUID matches this file.
#

#include <tunables/global>

profile LIBVIRT_TEMPLATE flags=(attach_disconnected) {
  #include <abstractions/libvirt-qemu>
  /home/<user>/kvm/** rwk,
}
```

### 2. Import an existing default net (not recommended)

```
$ terraform apply
...

libvirt_network.default: Creating...                                                            

│ Error: error defining libvirt network: operation failed: network 'default' already exists with uuid ee8c6c00-6f33-41f5-84eb-c6679a745f91 -   <network>                     
│       <name>default</name>              
│       <forward mode="nat"></forward>     
│       <bridge stp="on"></bridge>                                                    
│       <dns enable="no"></dns>                                                       
│       <ip address="192.168.122.1" family="ipv4" prefix="24">
...

$ terraform import libvirt_network.default ee8c6c00-6f33-41f5-84eb-c6679a745f91
```

### 3. Get the Red Hat Enterprise Linux 9.5 KVM Guest Image

[Red Hat Enterprise Linux 9.5 KVM Guest Image](
https://access.redhat.com/downloads/content/479/ver=/rhel---9/9.5/x86_64/product-software) (Red Hat Developer)

### 4. Resize the KVM Guest Image before using

```
$ qemu-img resize rhel-9.5-x86_64-kvm.qcow2 50G
```