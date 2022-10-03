#!/bin/bash

#Name of the VPC 

read -p 'Input a name for your VPC Stack:' vpc_name
read -p 'Cidr block for VPC:' vpc_cidr

# This section will sort through the select number of subnets
# read -p 'No. of subnets in VPC (1-4)' subnet_num


#This section will ask for public/private subnet configuration


#This section will be a conditional that sorts the user to the correct template below. 
# Once the template is selected and the parameters are inputted, it will call the launch 
# function and return here to run the actual command

#Parameter input for 4 public subnets

read -p 'Input name for Subnet 1: ' subnet1name
read -p 'CIDR block for Subnet 1:' cidr_one
read -p 'Input name for Subnet 2: ' subnet2name
read -p 'CIDR block for Subnet 2:' cidr_two
read -p 'Input name for Subnet 3: ' subnet3name
read -p 'CIDR block for Subnet 3:' cidr_three
read -p 'Input name for Subnet 4: ' subnet4name
read -p 'CIDR block for Subnet 4:' cidr_four
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15 
echo -e "."
sleep .15
echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two ParameterKey=07Subnet3Name,ParameterValue=$subnet3name ParameterKey=08Subnet3CidrBlock,ParameterValue=$cidr_three ParameterKey=09Subnet4Name,ParameterValue=$subnet4name ParameterKey=10Subnet4CidrBlock,ParameterValue=$cidr_four)"
sleep 3 
echo "Launching now...." 


#Launch output for VPC (could make this into it's own script to call - like a function when refactoring, so I don't have to copy and paste
# it over and over) launch_sequence

sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15 
echo -e "."
sleep .15
echo -e "Launching VPC with 4 Subnets....."
sleep 1
echo -e "."
sleep 1
echo -e "."
sleep 1
echo -e "."
sleep 1 
echo -e "."

# This could eventually go at the end if everything was successful??
sleep 1
echo -e "Launch Successful!.\n\n\n\n" 
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15 
echo -e "."
sleep .15


# This will be added to the appropriate parameter section with the launch sequence function pulled and put on a different page. 

echo -e "$(aws cloudformation wait stack-create-complete --stack-name $vpc_name)"
echo -e "$(aws cloudformation describe-stack-resources --stack-name $vpc_name)\n.\nLaunch successful!!!\n."

exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
