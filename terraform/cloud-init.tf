data "template_file" "kickstartconfig" {
  for_each = local.vms

  template = file("${path.module}/cloud-init/kickstart.yaml")
  vars = {
    user     = "${each.value.user}"
    password = "${each.value.password}"
  }
}

data "template_file" "metadataconfig" {
  for_each = local.vms

  template = file("${path.module}/cloud-init/metadata.yaml")
  vars = {
    ip      = "${each.value.ip}"
    netmask = "${each.value.netmask}"
    gw      = "${each.value.gw}"
    dns     = "${each.value.dns}"
    domain  = "${each.value.domain}"
  }
}

data "template_file" "userdataconfig" {
  for_each = local.vms

  template = file("${path.module}/cloud-init/userdata.yaml")
  vars = {
    hostname = "${each.value.hostname}"
    domain   = "${each.value.domain}"
  }
}


