# Creating internet gateway
resource "aws_internet_gateway" "three-tier-gateway" {
  vpc_id = aws_vpc.three-tier-vpc.id
}
