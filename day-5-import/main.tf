resource "aws_instance" "dev7" {
  ami = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.micro"
  tags = {
     Name = " manualec2"
  }
}

provider "aws" {
region = "us-east-1" # replace with your aws region 
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "syedras0711" # replace with your bucket name
  # add other configuration parameters as needed
  
}