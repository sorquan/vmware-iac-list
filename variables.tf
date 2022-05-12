locals {
  vms = {
    vm1 = {
      vCPU       = 2
      vMEM       = 2048
      vmname     = "tst"
      datastore  = "HDD-VD0"
      network    = "VM Network"
      user       = "sa"
      password   = "Ytgh0cn0q"
      template   = "ubuntu-focal-20.04-cloudimg"
      cluster    = "Cluster"
      datacenter = "Datacenter"
      hostname   = "tst"
      domain     = "[4it.work]"
      ip         = "192.168.1.52"
      netmask    = "24"
      gw         = "192.168.1.1"
      dns        = "[192.168.1.5, 192.168.1.6]"
    }
  }
}
