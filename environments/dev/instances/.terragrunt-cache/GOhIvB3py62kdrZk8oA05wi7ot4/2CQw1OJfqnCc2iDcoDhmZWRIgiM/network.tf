#Creating VPC
resource "aws_vpc" "venis_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "venis_vpc"
  }
}

# Create an internet gateway
resource "aws_internet_gateway" "venis_gw" {
  vpc_id = aws_vpc.venis_vpc.id
}

#Creating subnet
resource "aws_subnet" "venis_subnet" {
  vpc_id            = aws_vpc.venis_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.aws_availability_zone
}

#Creating route table
resource "aws_route_table" "venis_routetable" {
  vpc_id = aws_vpc.venis_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.venis_gw.id
  }
}
#Assoiciating subnet with route table
resource "aws_route_table_association" "subnet_association" {
  subnet_id = aws_subnet.venis_subnet.id
  route_table_id = aws_route_table.venis_routetable.id
}
