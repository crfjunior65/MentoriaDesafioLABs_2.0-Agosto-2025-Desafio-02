# --- AWS ---

provider "aws" {
  # Configuration options
  #alias = "us-east-1"
  profile = "crfjunior-outlook"
  region  = "us-east-1"
  default_tags {
    tags = {
      Terraform   = "true"
      Environment = "Desafio-02-Formacao-AWS"
      Management  = "Terraform"
    }
  }
}
