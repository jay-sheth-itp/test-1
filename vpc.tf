resource "aws_vpc" "security_vpc" {
  cidr_block = "15.0.0.0/30"

  tags = {
    Name = "Jay test Jenkins"
  }
}
