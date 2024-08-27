# INSTRUCTIONS:
# 1) ENSURE YOU POPULATE THE LOCALS
# 2) ENSURE YOU REPLACE ALL INPUT PARAMETERS, THAT CURRENTLY STATE 'ENTER VALUE', WITH VALID VALUES
# 3) YOUR CODE WOULD NOT COMPILE IF STEP NUMBER 2 IS NOT PERFORMED!
# 4) ENSURE YOU CREATE A BUCKET FOR YOUR STATE FILE AND YOU ADD THE NAME BELOW - MAINTAINING THE STATE OF THE INFRASTRUCTURE YOU CREATE IS ESSENTIAL - FOR APIS, THE BUCKETS ALREADY EXIST
# 5) THE VALUES OF THE COMMON COMPONENTS THAT YOU WILL NEED ARE PROVIDED IN THE COMMENTS
# 6) IF ADDITIONAL RESOURCES ARE REQUIRED BY YOUR API, ADD THEM TO THIS FILE
# 7) ENSURE THIS FILE IS PLACED WITHIN A 'terraform' FOLDER LOCATED AT THE ROOT PROJECT DIRECTORY
provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.0"
}
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
locals {
   //application_name = your application name # The name to use for your application
   parameter_store = "arn:aws:ssm:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:parameter"
}
data "aws_iam_role" "ec2_container_service_role" {
  name = "ecsServiceRole"
}
data "aws_iam_role" "ecs_task_execution_role" {
  name = "ecsTaskExecutionRole"
}
terraform {
  backend "s3" {
    bucket  = "terraform-state-staging-apis"
    encrypt = true
    region  = "eu-west-2"
    key     = "services/academy-information-api/state"
  }
}
/*    POSTGRES SET UP    */
data "aws_vpc" "staging_vpc" {
  tags = {
    Name = "vpc-staging-apis-staging"
  }
}
data "aws_subnet_ids" "staging" {
  vpc_id = data.aws_vpc.staging_vpc.id
 filter {
    name   = "tag:Type"
    values = ["private"] # insert values here
  }
}
 data "aws_ssm_parameter" "academy_postgres_db_password" {
   name = "/academy-api/staging/postgres-password"
 }
  data "aws_ssm_parameter" "academy_postgres_username" {
   name = "/academy-api/staging/postgres-username"
 }
 data "aws_ssm_parameter" "academy_postgres_hostname" {
   name = "/academy-api/staging/postgres-hostname"
 }

data "aws_ssm_parameter" "academy_username" {
   name = "/academy/reporting-server/username"
}
data "aws_ssm_parameter" "academy_password" {
   name = "/academy/reporting-server/password"
}
data "aws_ssm_parameter" "academy_hostname" {
   name = "/academy/reporting-server/hostname"
}
