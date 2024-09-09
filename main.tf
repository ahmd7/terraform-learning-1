terraform {
  backend "remote" {
    organization = "ahmed-samir"

    workspaces {
      name = "terraform-learning-1"
    }
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = var.instance_type


  tags = {
    Name = var.instance_name
  }
}
