terraform {
  required_providers {
    vsphere = {
      version = "2.1.1"
    }
    template = {
      version = "2.2.0"
    }
  }
}

provider "vsphere" {
  allow_unverified_ssl = true
}

provider "template" {}
