# resource "aws_elb" "bar" {
#   name               = "foobar-terraform-elb"
#   availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

#   listener {
#     instance_port     = 8000
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }

 

#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:8000/"
#     interval            = 30
#   }

#   instances                   = [aws_instance.foo.id]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "foobar-terraform-elb"
#   }
# }



resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  # security_groups    = [aws_security_group.lb_sg.id]
  # network_interface_id = aws_network_interface.foo.id
  subnets            = [aws_subnet.private1.id , aws_subnet.private2.id, aws_subnet.private3.id]


 
  tags = {
    Environment = "production"
  }
}