# Overview

This GitHub repository contains Terraform configuration files for creating and deploying an infrastructure on Amazon Web Services (AWS). 

The infrastructure consists of an Amazon VPC (Virtual Private Cloud) with two subnets, one public and one private.

Two security groups, one for the public subnet and one for the private subnet. The public security group allows inbound traffic on port 22 (SSH) a specific IP address, while the private security group allows all traffic from the public subnet.

## The code

-AMI_build folder you will find all the instructions to create your target AMI.

-Modules folder contains all the file modules on which the main.tf file in this folder is built on.

-The Main folder contains the following files:

- `main.tf`: This file contains the main Terraform configuration for creating the AWS resources, including a VPC, subnets,EC2s, and security groups. It defines the resources and their attributes, and specifies how they are interconnected.

- `provider.tf`: This file specifies the provider (in this case, AWS) and the region where the resources will be deployed. It also sets up the necessary credentials for accessing the AWS account.

- `terraform.tfvars`: This file defines input variables for the Terraform configuration. It allows users to specify their own values for variables such as region, VPC CIDR block, and availability zones,AMI ID,etc.

- `variables.tf`: This file declares the input variables that are used in the Terraform configuration. It specifies the variable names, types, and default values.

- `output.tf`: This file will print on the terminal the public IP of the attacker EC2 to ssh into and the private IP of the target EC2.

Users can use these files as a starting point to deploy their own AWS infrastructure with Terraform. They can modify the files to fit their specific needs, such as changing the region, number of subnets, or security group rules. However, it's important to keep in mind that deploying infrastructure in the cloud carries inherent risks and potential security vulnerabilities. It's the responsibility of the user to ensure that their infrastructure is secure and follows best practices for cloud security.
