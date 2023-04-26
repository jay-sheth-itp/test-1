resource "aws_vpc" "security_vpc" {
  cidr_block = "15.0.0.0/28"

  tags = {
    Name = "Jay test Jenkins"
  }
}
