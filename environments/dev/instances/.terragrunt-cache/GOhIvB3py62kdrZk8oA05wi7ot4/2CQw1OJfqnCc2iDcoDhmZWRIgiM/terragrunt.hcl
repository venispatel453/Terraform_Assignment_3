terraform{
    source = "../../modules/instances"
}
# This instance is been created in ap-south-1 region 
inputs = {
    aws_availability_zone = "ap-south-1a"
    aws_region = "ap-south-1"
    instance_name = "Venis_Unique_Dev_Instance"
    instance_type = "t2.micro"
    ec2_emi = "ami-06b72b3b2a773be2b"
}

include {
    path = "${find_in_parent_folders()}"
}