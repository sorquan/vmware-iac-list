data "template_file" "metadataconfig" {
  for_each = var.vms

  template = file("${path.module}/cloud-init/metadata.yaml")
  vars = {
    ip      = "${each.value.ip}"
    netmask = "${each.value.netmask}"
    gw      = "${each.value.gw}"
    dns     = "${each.value.dns}"
    search  = "${each.value.search}"
  }
}

data "template_file" "userdataconfig" {
  for_each = var.vms

  template = file("${path.module}/cloud-init/userdata.yaml")
  vars = {
    hostname           = "${each.value.hostname}"
    domain             = "${each.value.domain}"
    password           = "${each.value.password}"
    ssh_authorized_key = "${each.value.ssh_authorized_key}"
  }
}


