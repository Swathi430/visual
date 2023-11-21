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
