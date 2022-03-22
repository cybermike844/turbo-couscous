# Creating External LoadBalancer
resource "aws_lb" "external-alb" {
  name = "External LB"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.three-tier-sg.id]
  subnets = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2]
}
resource "aws_lb_target_group" "target-elb" {
  name = "ALB TG"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.three-tier-vpc.id
}
