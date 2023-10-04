provider "aws" {
  region     = "us-west-2"
  access_key =  "AKIAWN24DCXV6HZK3GWA"
  secret_key = "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"
}

resource "aws_instance" "MYAWSVM" {
  count = "2"
  ami = "ami-094125af156557ca2"
  instance_type = "t2.micro"
  key_name = "terraform"
  security_group = ["launch-wizard-1"]
  tags = {
    Name = " MyEC2-VM"
  }
}

  