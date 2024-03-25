terraform {
    required_providers {
        vcd = {
            source = "vmware/vcd"
            version = "3.9.0"
        }
    }
    required_version = ">= 0.13"
}

provider "vcd" {
    auth_type = "integrated"
    max_retry_timeout = var.vcd_org_max_retry_timeout
    user = var.vcd_org_user
    password = var.vcd_org_password
    org = var.vcd_org_org
    vdc = var.vcd_org_vdc
    url = var.vcd_org_url
    allow_unverified_ssl = var.vcd_org_allow_unverified_ssl
}

resource "vcd_network_routed" "terraform-net" {
  name         = "terraform-net"
  edge_gateway = var.vcd_org_edge_name
  gateway = "192.168.200.1"
  dhcp_pool {
    start_address = "192.168.200.2"
    end_address   = "192.168.200.100"
  }
  static_ip_pool {
    start_address = "192.168.200.101"
    end_address   = "192.168.200.254"
  }
}