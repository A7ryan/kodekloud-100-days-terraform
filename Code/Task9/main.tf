resource "aws_ebs_volume" "devops_volume" {
  availability_zone = "us-east-1a"
  size = 2
  type = "gp3"
  tags = {
    Name = "devops-volume"
  }
}