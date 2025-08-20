data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "crfjunior-terraform-state"
    key     = "vpc/terraform.tfstate"
    profile = "crfjunior-outlook" # Use your AWS profile if needed
    #key    = "RemoteState/vpc/terraform.tfstate"
    #bucket = "terraform-state-prod"
    #key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}

/*
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "crfjunior-remote-state-zabbix"
    key    = "vpc/terraform.tfstate"
    #key    = "RemoteState/vpc/terraform.tfstate"
    #bucket = "terraform-state-prod"
    #key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}
*/
