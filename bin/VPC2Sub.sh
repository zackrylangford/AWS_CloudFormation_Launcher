#!/bin/bash

#Ask user to input the name of the VPC 

read -p 'Input a name for your VPC:' vpc_name
read -p 'Cidr block for VPC:' vpc_cidr


echo -e "How many subnets would you like to make private? (0-2 or press b for main menu)"

read input

##########Parameter input for 2 public subnets############
if [[ $input -eq 0 ]]; then
    read -p 'Input name for Public Subnet 1:' subnet1name
    read -p 'CIDR block for Public Subnet 1:' cidr_one
    read -p 'Input name for Public Subnet 2:' subnet2name
    read -p 'CIDR block for Public Subnet 2:' cidr_two
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    echo -e "Launching CloudFormation Stack: $vpc_name....."
    sleep .15 
    echo -e "."
    sleep .15
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_2_Pub.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two)"

##########Parameter input for 1 public subnet and 1 private subnet############
elif [[ $input -eq 1 ]]; then
    read -p 'Input name for Public Subnet 1:' subnet1name
    read -p 'CIDR block for Public Subnet 1:' cidr_one
    read -p 'Input name for Private Subnet 2:' subnet2name
    read -p 'CIDR block for Private Subnet 2:' cidr_two
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    echo -e "Launching CloudFormation Stack: $vpc_name....."
    sleep .15 
    echo -e "."
    sleep .15
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_1Pub_1Priv.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two)"

##########Parameter input for 2 private subnets############
elif [[ $input -eq 2 ]]; then
    read -p 'Input name for Private Subnet 1:' subnet1name
    read -p 'CIDR block for Private Subnet 1:' cidr_one
    read -p 'Input name for Private Subnet 2:' subnet2name
    read -p 'CIDR block for Private Subnet 2:' cidr_two
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    echo -e "Launching CloudFormation Stack: $vpc_name....."
    sleep .15 
    echo -e "."
    sleep .15
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_2_Priv.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two)"


# Back to main menu or error prompt 
elif [[ $input = b ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"


else
	echo -e "\n.\n.\n.\n.Please enter a valid response (0-4 or b to return to main menu)\n\n"
fi

echo -e "$(aws cloudformation wait stack-create-complete --stack-name $vpc_name)" &
pid=$!

while kill -0 $pid &>/dev/null; do
    echo "."
    sleep 5
    echo ".."
    sleep 5
    echo "..."
    sleep 5
    echo "...."
    sleep 5
    echo ".."
    sleep 5

done

# If successful
echo -e "\n\nLaunch Successful!\n\n"
sleep 1
echo -e "$vpc_name is up and running!\n\n"

exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
