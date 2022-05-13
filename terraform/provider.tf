terraform {
  backend "http" {} # The configuration is described by environment variables in .gitlab-ci.yml
  required_providers {
    vsphere = {
      version = "2.1.1"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
  }
}

provider "vsphere" {
  allow_unverified_ssl = true
}

provider "template" {} # No configuration required
