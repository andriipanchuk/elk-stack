variable "deployment_endpoint" {}

variable "google_domain_name" {}

variable "kibana_ip" {
    type = "map"
    default = { 
        kibana_ip_ranges = "24.15.232.38/32, 50.194.68.229/32, 10.16.0.27/8"
    }
}

