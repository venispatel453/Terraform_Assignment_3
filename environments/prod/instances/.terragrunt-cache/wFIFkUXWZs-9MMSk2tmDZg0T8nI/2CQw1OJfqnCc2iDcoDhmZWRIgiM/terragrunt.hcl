terraform{
    source = "../../modules/instances"
}
# This instance is been created in us-west-1 region 
inputs = {
    aws_availability_zone = "us-west-1a"
    aws_region = "us-west-1"
    instance_name = "Venis_Unique_Prod_Instance"
    instance_type = "t2.micro"
    ec2_emi = "ami-0f960def03d1071d3"
}

# This will search of configuration file in parent folder aswell
include {
    path = "${find_in_parent_folders()}"
}
