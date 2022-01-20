# NOTE - Update account ids in role_arn of each provider
# Also update bucket name and account id in tf backend config

provider "sumologic" {
  environment = var.sumologic_environment
  access_id   = var.sumologic_access_id
  access_key  = var.sumologic_access_key
}

provider "aws" {
  region = "us-east-1"
  alias  = "g2dev-us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::<g2dev_account_id>:role/terraform_role"
    session_name = "sumologic"
  }

  default_tags {
   tags = {
     owner       = "terraform"
     project     = "sumologic"
     team        = "infra"
     environment = "dev"
   }
 }
}

terraform {
  backend "s3" {
    bucket       = "g2-sumologic-tf-state"
    key          = "global/terraform.tfstate"
    region       = "us-east-1"
    role_arn     = "arn:aws:iam::<g2infra_account_id>:role/sumologic_terraform_role"
    session_name = "sumologic_terraform"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "g2tracking-us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::<g2tracking_account_id>:role/terraform_role"
    session_name = "sumologic"
  }

  default_tags {
   tags = {
     owner       = "terraform"
     project     = "sumologic"
     team        = "infra"
     environment = "production"
   }
 }
}

provider "aws" {
  region = "us-east-1"
  alias  = "g2analytics-us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::<g2analytics_account_id>:role/terraform_role"
    session_name = "sumologic"
  }

  default_tags {
   tags = {
     owner       = "terraform"
     project     = "sumologic"
     team        = "infra"
     environment = "production"
   }
 }
}

provider "aws" {
  region = "us-east-1"
  alias  = "g2buyerintent-us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::<g2buyerintent_account_id>:role/terraform_role"
    session_name = "sumologic"
  }

  default_tags {
   tags = {
     owner       = "terraform"
     project     = "sumologic"
     team        = "infra"
     environment = "production"
   }
 }
}

provider "aws" {
  region = "us-east-1"
  alias  = "g2ue-us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::<g2ue_account_id>:role/terraform_role"
    session_name = "sumologic"
  }

  default_tags {
   tags = {
     owner       = "terraform"
     project     = "sumologic"
     team        = "infra"
     environment = "production"
   }
 }
}

provider "aws" {
  region = "us-east-1"
  alias  = "g2track-us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::<g2track_account_id>:role/terraform_role"
    session_name = "sumologic"
  }

  default_tags {
   tags = {
     owner       = "terraform"
     project     = "sumologic"
     team        = "infra"
     environment = "production"
   }
 }
}
