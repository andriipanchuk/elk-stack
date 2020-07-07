
variable "google_domain_name" {}

variable "deployment_endpoint" {}



variable "deployment_name" {}

variable "deployment_environment" {}

variable "deployment_path" {}

variable "elasticsearch_ip" {
    type = "map"
    default = { 
        elasticsearch_ip_ranges = "24.15.232.38/32, 50.194.68.229/32, 10.16.0.27/8"
    }
}