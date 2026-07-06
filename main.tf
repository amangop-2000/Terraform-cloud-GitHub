terraform {
    required_version = "~> 1.15.7" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "aman_prod" {
	ami = "ami-0b6d9d3d33ba97d99" 
	instance_type = "t3.micro"
        tags = {
                "Name" = "hemanth(GOAT)_server"
        }
}
