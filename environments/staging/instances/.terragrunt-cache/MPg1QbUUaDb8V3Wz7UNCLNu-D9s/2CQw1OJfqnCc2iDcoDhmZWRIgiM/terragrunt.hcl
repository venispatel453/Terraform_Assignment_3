terraform{
    source = "../../modules/instances"
}
# This instance is been created in ap-south-1 region 
inputs = {
    aws_availability_zone = "ca-central-1b"
    aws_region = "ca-central-1"
    instance_name = "Venis_Unique_Staging_Instance"
    instance_type = "t2.micro"
    ec2_emi = "ami-0418ff7e325d28366"
}
include {
    path = "${find_in_parent_folders()}"
}
