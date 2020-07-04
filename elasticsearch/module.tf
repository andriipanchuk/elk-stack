  
module "elasticsearch_deploy" {
  source                 = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "elasticsearch.${var.google_domain_name}"
  deployment_path        = "${var.deployment_path}"

template_custom_vars    = {
    elasticsearch_ip_ranges          =  "${var.elasticsearch_ip["elasticsearch_ip_ranges"]}"
    http_code = "%%{http_code}"
  }
}
