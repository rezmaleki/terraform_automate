terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

#provider "aws" {
#  region  = "us-west-2"
#}

resource "aws_instance" "app_server" {

  ami                         = "ami-017fecd1353bcc96e"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags = {
    Name = "ExampleAppServerInstance"
  }

}
