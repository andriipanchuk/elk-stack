
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
module "filebeat" {
  source  = "fuchicorp/chart/helm" 
  deployment_name        = "filebeat"
  deployment_environment = "test"
  deployment_path        = "filebeat"
  deployment_endpoint    = "blabla.com"



  template_custom_vars   = {
    NODE_NAME = "$${NODE_NAME}"
    ELASTICSEARCH_HOSTS = "$${ELASTICSEARCH_HOSTS:elasticsearch-master:9200}"
  }
}
