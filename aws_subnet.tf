resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"
}

  

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.11.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.12.0/24"
  availability_zone = "us-east-1a"

 
}