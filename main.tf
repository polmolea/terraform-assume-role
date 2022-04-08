terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.33"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

data "external" "caller_identity" {
  program = ["bash", "${path.root}/caller-identity.sh"]
}

output "caller_identity" {
  value = "${data.external.caller_identity.result}"
}
