provider "aws" {
    region = "eu-north-1"
    access_key = "AKIA4YABMCDJWYARX34I"
    secret_key = "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"
}
resource "aws_vpc" "my_1010_vpc" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "my_1010_vpc"
    } 
}
resource "aws_security_group" "my_sg" {
    name = "my_1010_sg"
    vpc_id = "my_1010_vpc"
  ingress {
    description      = "TLS from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
}
