terraform {
#   required_version = ">= 0.8, < 0.9"
    required_version = ">= 0.8"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-51537029"
  instance_type = "t2.micro"

  tags {
      Name = "terraform-example"
  }
}
