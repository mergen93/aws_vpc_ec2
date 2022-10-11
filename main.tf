# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.my_vpc.id

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = [aws_vpc.my_vpc.cidr_block]

# }
# }

# resource "aws_instance" "web" {
#   ami           = "ami-026b57f3c383c2eec"
#   instance_type = "t3.micro"
#   key_name = "laptop"
#   vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
#   user_data = <<EOF
#   #!/bin/bash
#   yum install httpd -y 
#   service httpd start
#   chkconfig httpd on 
#   echo "WELCOME FIRST WEB SERVICE " > /var/www/html/index.html
#   EOF


#   tags = {
#     Name = "HelloWorld"
#   }
# }



# resource "aws_vpc" "my_vpc" {
#   cidr_block = "10.0.0.0/16"

#   tags = {
#     Name = "tf-example"
#   }
# }






resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "main"
  }
}



resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.private1.id
  # private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name = "laptop"
  # vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  user_data = <<EOF
  #!/bin/bash
  yum install httpd -y 
  service httpd start
  chkconfig httpd on 
  echo "WELCOME FIRST WEB SERVICE " > /var/www/html/index.html
  EOF
  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}

resource "aws_network_interface" "foo2" {
  subnet_id   = aws_subnet.private1.id
  # private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo2" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name = "laptop"
  # vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  user_data = <<EOF
  #!/bin/bash
  yum install httpd -y 
  service httpd start
  chkconfig httpd on 
  echo "WELCOME second WEB SERVICE " > /var/www/html/index.html
  EOF
  network_interface {
    network_interface_id = aws_network_interface.foo2.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}


resource "aws_network_interface" "foo3" {
  subnet_id   = aws_subnet.private1.id
  # private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo3" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name = "laptop"
  # vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  user_data = <<EOF
  #!/bin/bash
  yum install httpd -y 
  service httpd start
  chkconfig httpd on 
  echo "WELCOME FIRST WEB SERVICE " > /var/www/html/index.html
  EOF
  network_interface {
    network_interface_id = aws_network_interface.foo3.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}