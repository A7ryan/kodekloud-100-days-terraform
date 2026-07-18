resource "aws_instance" "datacenter_ec2" {
  ami = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  security_groups = [ "default" ]
  key_name = aws_key_pair.datacenter_kp.key_name
  tags = {
    Name = "datacenter-ec2"
  }
}

resource "tls_private_key" "tls_kp" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "datacenter_kp" {
  key_name = "datacenter-kp"
  public_key = tls_private_key.tls_kp.public_key_openssh
}