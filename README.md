terragrunt-rds-sample/rds/ is the repo where the actual tf files are exist

And we have a hirechy AAX/us-east-1/sandbox/rds/

Where the only terraform.tfvars file exist which has the remote state along with the main tf files as a source
So basically it is kind of a dry run using terragrunt inside the directory terragrunt-rds-sample/AAX/us-east-1/sandbox/rds/ run the following command to create the RDS

# terragrunt apply --terragrunt-source-update

and to remove the RDS run the following command

# terragrunt destroy --terragrunt-source-update