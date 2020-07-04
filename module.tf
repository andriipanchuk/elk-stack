module "kibana" {
  source  = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "kibana"
  deployment_environment = "test"
  deployment_endpoint    = "kibana.${var.google_domain_name}"
  deployment_path        = "kibana"
  
  template_custom_vars    = {
    #null_depends_on       = "${null_resource.cert_manager.id}"
    kibana_ip_ranges          =  "${var.kibana_ip["kibana_ip_ranges"]}"
  
  }
}