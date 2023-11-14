provider "aws" {
    region = "eu-north-1"
    access_key = "AKIA4YABMCDJRUOEOOM2"
    secret_key = "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" 
}
resource "aws_vpc" "my_1011_vpc" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name ="my_1011_vpc"
    }
}
resource "aws_security_group" "my_1011_sg" {
    name = "my_sg"
    vpc_id = "my_1011_vpc"
    ingress {
    description      = "TLS from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
}