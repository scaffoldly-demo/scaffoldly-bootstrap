## THIS FILE IS AUTOMATICALLY GENERATED BY SCAFFOLDLY  ##
## CONFIG CAN BE CHANGED AT: https://start.scaffold.ly ##


module "aws_serverless_api_payments_sls_rest_api" {
  source  = "scaffoldly/serverless-api/aws"
  version = "1.0.17"

  repository_name    = "payments-sls-rest-api"
  api_gateway_stages = module.bootstrap_aws.api_gateway_stages
  path               = "payments"

  depends_on = [
    module.bootstrap_aws
  ]
}

output "payments-sls-rest-api_stage_config_aws" {
  value = module.aws_serverless_api_payments_sls_rest_api.stage_config
}

output "payments-sls-rest-api_deployer_credentials_aws" {
  value     = module.aws_serverless_api_payments_sls_rest_api.deployer_credentials
  sensitive = true
}