terraform {
    required_providers {
        vcd = {
            source = "vmware/vcd"
        }
    }
    required_version = ">= 0.13"
}

provider "vcd" {
    auth_type = "integrated"
    max_retry_timeout = vcd_org_max_retry_timeout
    user = var.vcd_org_user
    password = var.vcd_org_password
    org = var.vcd_org_org
    url = var.vcd_org_url
}