terragrunt = {
 terraform = {
        source = "../../../../rds"
}

 remote_state = {
  backend = "s3"

  config = {
    encrypt        = true
    bucket         = "bbu-terragrunt-backend"
    key            = "rds.terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "bbu-terragrunt-backend"
  }
}

# Configure root level variables that all resources can inherit. This is especially helpful with multi-account configs
# where terraform_remote_state data sources are placed directly into the modules.
inputs = {
  aws_region                   = "us-east-1"
  tfstate_global_bucket        = "bbu-terragrunt-test"
  tfstate_global_bucket_region = "us-east-1"
}
}