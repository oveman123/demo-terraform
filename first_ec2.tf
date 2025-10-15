variable "vpc_id" {
  default = "vpc-033711c944a106ee6"
}

variable "subnet_id" {
  default = "subnet-0f33a8732b02d885d"
}


provider "aws" {
  region     = "eu-central-1"

}

resource "aws_instance" "example" {
  ami           = "ami-08697da0e8d9f59ec"
  instance_type = "t3.micro"
  subnet_id = "subnet-0f33a8732b02d885d"

  tags = {
    Name = "my-first-instance-terraform"
  }
}
