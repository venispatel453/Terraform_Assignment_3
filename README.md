
# Terraform with Terragrunt for Multiple Environments

This project utilizes Terraform and Terragrunt to set up configurations for three different environments. 

## Description
This project aims to set up Terraform configurations for different environments like dev, stag and prod using Terragrunt. Terragrunt is utilized to simplify the management of multiple environments by allowing the use of a single set of Terraform configurations across different environments while easily customizing environment-specific variables. It also creates backup of state files of different environments and stores into the AWS S3 bucket. 


## Overview:
Terragrunt is a thin wrapper that provides extra tools for keeping your configurations DRY, working with multiple Terraform modules, and managing remote state. It helps in maintaining consistency and reducing duplication of code by allowing for the reuse of common configuration settings across multiple environments.


## Prerequisites

1. **Terraform Installed:** Install Terraform on your local machine.
2. **Terragrunt Installed:** Install Terragrunt on your local machine.
3. **Aws Configurations:** Configure to your AWS account through terminal/command prompt.
4. **Credential and Permission:** Select an AWS account which has permission to create and destroy the AWS resources.  


## Terraform Version

| Used Terraform Version |
|------------------------|
| 1.3.0                  |

## Terragrunt Version

| Used Terraform Version |
|------------------------|
| 0.55.2                 |


## Usage

we can run following commands for each environments:  

1. **Initialize the Terragrunt directory**:
    used to prepare the environment for applying    Terraform configurations managed by Terragrunt

    ```bash
    terragrunt init
    ```

2. **Validate Terragrunt Configuration**:

    ```bash
    terragrunt validate
    ```

3. **Review and Customize Configuration**:
   
    Review and modify configurations in respective `.tf` and `.hcl` files if necessary.
    Run Terragrunt to plan the infrastructure changes:
    If the plan looks satisfactory, apply the changes:

     ```bash
    terragrunt plan
    ```


4. **Apply Terragrunt Changes**:

    ```bash
    terragrunt apply
    ```


5. **Destroy Resources**:

   Once you're done with the resources, it's important to destroy them to avoid unnecessary costs. Use the following command:

    ```bash
    terragrunt destroy
    ```
## File Structure

### Modules

- **`main.tf`**: Configures the Terraform providers needed for the project.
- **`resources.tf`**: Creates the EC2 instance along with necessary configurations like security groups and instance type.
- **`network.tf`**: Specifies networking configurations including VPC, subnets, internet gateway, and route tables for the EC2 instance.
- **`variables.tf`**: Declares the variables used throughout the Terraform configurations like instance name, type, emi id, aws region, availability zone. 
- **`README.md`**: Documentation providing an overview, installation instructions, usage guidelines, and project structure.


### Environments 

- **`terragrunt.hcl`**: This file configures backend configurations for all the Environments and it stores state file of each Environments to AWS S3 bucket.  

### Files Per Environments(dev,prod,staging)

- **`terragrunt.hcl`**: This file uses variables written in variables.tf file from terraform module and configures variables based on Environment.
