deployment_name         = "elk"
deployment_environment  = "elk"
google_domain_name      = "fuchicorp.com"
credentials             = "fuchicorp-service-account.json"
google_bucket_name      = "fuchicorp-common"
google_project_id       = "solid-antler-278903"
elk = {
  whitelisted_ip_ranges    = "24.15.232.38/32, 50.194.68.229/32, 10.16.0.27/8"
}