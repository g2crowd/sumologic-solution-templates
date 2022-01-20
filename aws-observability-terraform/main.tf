# The below module is used to install apps, metric rules, Field extraction rules, Fields and Monitors.
# NOTE - The "app-modules" should be installed per Sumo Logic organization.

module "sumo-module" {
  source                   = "./app-modules"
  access_id                = var.sumologic_access_id
  access_key               = var.sumologic_access_key
  environment              = var.sumologic_environment
  json_file_directory_path = dirname(path.cwd)
}

# The below module is used to install AWS and Sumo Logic resources to collect logs and metrics from AWS into Sumo Logic.
# NOTE - For multi account and multi region deployment, copy the module and provide different aws provider for region and account.
#
# NOTE - Manually need to add "sensitive   = true" in the output "sumologic_metric_rules" to fix -
# Expressions used in outputs can only refer to sensitive values if the sensitive attribute is true.


module "g2dev-us-east-1" {
  source    = "./source-module"
  providers = { aws = aws.g2dev-us-east-1 }

  aws_account_alias         = "g2dev"
  sumologic_organization_id = var.sumologic_organization_id
  access_id                 = var.sumologic_access_id
  access_key                = var.sumologic_access_key
  environment               = var.sumologic_environment
}

module "g2tracking-us-east-1" {
  source    = "./source-module"
  providers = { aws = aws.g2tracking-us-east-1 }

  aws_account_alias         = "g2tracking"
  sumologic_organization_id = var.sumologic_organization_id
  access_id                 = var.sumologic_access_id
  access_key                = var.sumologic_access_key
  environment               = var.sumologic_environment
}

module "g2analytics-us-east-1" {
  source    = "./source-module"
  providers = { aws = aws.g2analytics-us-east-1 }

  aws_account_alias         = "g2analytics"
  sumologic_organization_id = var.sumologic_organization_id
  access_id                 = var.sumologic_access_id
  access_key                = var.sumologic_access_key
  environment               = var.sumologic_environment
}

module "g2buyerintent-us-east-1" {
  source    = "./source-module"
  providers = { aws = aws.g2buyerintent-us-east-1 }

  aws_account_alias         = "g2buyerintent"
  sumologic_organization_id = var.sumologic_organization_id
  access_id                 = var.sumologic_access_id
  access_key                = var.sumologic_access_key
  environment               = var.sumologic_environment
}

module "g2ue-us-east-1" {
  source    = "./source-module"
  providers = { aws = aws.g2ue-us-east-1 }

  aws_account_alias         = "g2ue"
  sumologic_organization_id = var.sumologic_organization_id
  access_id                 = var.sumologic_access_id
  access_key                = var.sumologic_access_key
  environment               = var.sumologic_environment
}

module "g2track-us-east-1" {
  source    = "./source-module"
  providers = { aws = aws.g2track-us-east-1 }

  aws_account_alias         = "g2track"
  sumologic_organization_id = var.sumologic_organization_id
  access_id                 = var.sumologic_access_id
  access_key                = var.sumologic_access_key
  environment               = var.sumologic_environment
}
