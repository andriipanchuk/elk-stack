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
