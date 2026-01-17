resource "aws_vpc" "nautilus-vpc" {
  # Lets take smallest ips
  cidr_block = "10.0.0.0/28"

  tags = {
    Name = "nautilus-vpc"
  }
}