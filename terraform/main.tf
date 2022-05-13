provider "vsphere" {
  allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "vms" {
  for_each = var.vms

  resource_pool_id = data.vsphere_compute_cluster.this[each.key].resource_pool_id
  datastore_id     = data.vsphere_datastore.this[each.key].id

  name     = each.value.vmname
  num_cpus = each.value.vCPU
  memory   = each.value.vMEM

  guest_id  = data.vsphere_virtual_machine.template[each.key].guest_id
  scsi_type = data.vsphere_virtual_machine.template[each.key].scsi_type

  cdrom {
    client_device = true
  }

  network_interface {
    network_id   = data.vsphere_network.this[each.key].id
    adapter_type = data.vsphere_virtual_machine.template[each.key].network_interface_types[0]
  }
  wait_for_guest_net_timeout = 0

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template[each.key].disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template[each.key].disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template[each.key].disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template[each.key].id
  }

  extra_config = {
    "guestinfo.metadata"          = base64encode(data.template_file.metadataconfig[each.key].rendered)
    "guestinfo.metadata.encoding" = "base64"
    "guestinfo.userdata"          = base64encode(data.template_file.userdataconfig[each.key].rendered)
    "guestinfo.userdata.encoding" = "base64"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo cloud-init status --wait"
    ]
    connection {
      host     = each.value.ip
      user     = "ubuntu"
      password = each.value.password
      type     = "ssh"
      timeout  = "10m"
    }
  }
}
