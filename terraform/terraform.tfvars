vms = {
  vm1 = {
    datastore          = "HDD-VD0"
    network            = "VM Network"
    template           = "ubuntu-focal-20.04-cloudimg"
    cluster            = "Cluster"
    datacenter         = "Datacenter"
    vmname             = "tst"
    hostname           = "tst"
    domain             = "4it.work"
    vCPU               = 2
    vMEM               = 2048
    ip                 = "192.168.1.52"
    netmask            = "24"
    gw                 = "192.168.1.1"
    dns                = "[192.168.1.5, 192.168.1.6]"
    search             = "[4it.work]"
    ssh_authorized_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2fYzz6Qhpivd2BZwe+RV4ZM5VDcj2PPW9O0tOcFkOVhs3XP5IOs6g/n6eDacNQx8c2rvK6/1HRlG6t6Ako5GzaZ4NoB1NjnfwFtyCnIusezAdSKfvzhU7EWAOM6qQi3em/avOXkdP+YQtb5XIWOCGVSnjbcywYUnZNMYADZOSxOGouwbCjqjUdeMlX3KkEDhncCzu+Borpfh3Vg/YbxvwD9ThcGPSa/+UIqFRfhVqP/99BAfNueNYe8Plbyj+IZqu+n6BmIJRicPG2vAZq1bn4gAOWNsd30QXOkrGHa6XPU4cF6qIVM53CUS7sO3s5FHujgxBNdf8oGylW8BSBxZCgqmHNYajQxw1DgPGGUOY65OcOHGxzjyPWyr4bAslqF4ubud6zGLU1MnmXPbKDxW1h1/hSio6g4EU0wDS3I6a8z9hG2FRTfaqpM2ckn79zQwX7hZdeja30Tat+b9v15HFNzzK5SrlHvcHRAhKBFfPYBGPHkwc6ezCni2ccp27PUU="
  }
}
