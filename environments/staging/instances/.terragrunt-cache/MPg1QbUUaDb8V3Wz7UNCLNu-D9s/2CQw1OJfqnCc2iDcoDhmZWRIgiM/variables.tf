variable "instance_name" {
    type = string
    description = "Ec2 instance name"
}

variable "instance_type" {
    type = string
    description = "The type of EC2 instance to be launched."
}

variable "ec2_emi" {
    type = string
    description = "The AMI id for EC2 instance"
}

variable "aws_region"{
    type = string
    description = "This is the region where AWS instances will be created"
}

variable "aws_availability_zone" {
    type = string
}