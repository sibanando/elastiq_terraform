provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "basiston_instance" {
  ami           = "ami-04dd23e62ed049936"  # Replace with the latest  AMI ID
  instance_type = "t2.large"
  key_name      = "ayush2"
  subnet_id     = "subnet-0b4f9b02f2327de49"
  vpc_security_group_ids = ["sg-0bfaccfa0230f6114"]
  tags = {
    Name = "Basiston_EC2_Instance"
  }
}
