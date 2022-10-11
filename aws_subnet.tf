# resource "aws_subnet" "private1" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "us-east-1a"
# }

  

# resource "aws_subnet" "private2" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = "us-east-1b"
# }

# resource "aws_subnet" "private3" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "10.0.3.0/24"
#   availability_zone = "us-east-1c
# }


resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.11.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "tf-example2"
  }
}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.12.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "tf-example3"
  }
}

output "subnet_id" {
  value = aws_subnet.private3.id
}