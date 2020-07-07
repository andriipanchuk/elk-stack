
variable "google_domain_name" {
}

variable "elk" {
    type = "map"
    default = { 
        whitelisted_ip_ranges = "24.15.232.38/32, 50.194.68.229/32, 10.16.0.27/8, 50.194.68.230/32"
    }
}


variable "deployment_name" {
}

variable "deployment_environment" {
}
