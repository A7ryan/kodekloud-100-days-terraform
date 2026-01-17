resource "tls_private_key" "xfusion-pk" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "aws-pk" {
  public_key = tls_private_key.xfusion-pk.public_key_openssh

  # NOTE: THIS KEY NAME SHOULD MATCH WITH GIVEN NAME
  key_name = "xfusion-kp"
}

resource "local_file" "xfusion-kp" {
  filename = "/home/bob/xfusion-kp.pem"
  file_permission = "0400"
  content = tls_private_key.xfusion-pk.private_key_pem
}
