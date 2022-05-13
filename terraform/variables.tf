variable "vms" {
  type = map(object({
    datastore           = string
    network             = string
    template            = string
    cluster             = string
    datacenter          = string
    vmname              = string
    hostname            = string
    domain              = string
    vCPU                = number
    vMEM                = number
    ip                  = string
    netmask             = number
    gw                  = string
    dns                 = string
    search              = string
    password            = string
    ssh_authorized_keys = string
  }))
}
