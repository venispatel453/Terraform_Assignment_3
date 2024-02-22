# Creating a security group 
resource "aws_security_group" "instance_sg" {
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# Creating aws instance
resource "aws_instance" "example" {
  ami = var.ec2_emi
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}