# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "gitlab" {
    ami = var.ami
    instance_type = var.instance_type

    tags = {
        terraform = "true"
        mpanov    = "true"
    }
}