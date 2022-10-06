#!/bin/bash

#Ask user to input the name of the VPC 

read -p 'Input a name for your VPC Stack:' vpc_name
read -p 'Cidr block for VPC:' vpc_cidr


echo -e "How many of the 4 subnets would you like to make private? (enter 0-4 or b for main menu)"

read input

##########Parameter input for 4 public subnets############
if [[ $input -eq 1 ]]; then
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
    echo -e "Launching CloudFormation Stack: $vpc_name....."
    sleep .15 
    echo -e "."
    sleep .15
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two ParameterKey=07Subnet3Name,ParameterValue=$subnet3name ParameterKey=08Subnet3CidrBlock,ParameterValue=$cidr_three ParameterKey=09Subnet4Name,ParameterValue=$subnet4name ParameterKey=10Subnet4CidrBlock,ParameterValue=$cidr_four)"

##########Parameter input for 3 public subnet and 1 private subnets############
elif [[ $input -eq 1 ]]; then
    read -p 'Input name for Private Subnet 1: ' subnet1name
    read -p 'CIDR block for Private Subnet 1:' cidr_one
    read -p 'Input name for Public Subnet 2: ' subnet2name
    read -p 'CIDR block for Public Subnet 2:' cidr_two
    read -p 'Input name for Public Subnet 3: ' subnet3name
    read -p 'CIDR block for Public Subnet 3:' cidr_three
    read -p 'Input name for Public Subnet 4: ' subnet4name
    read -p 'CIDR block for Public Subnet 4:' cidr_four
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
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two ParameterKey=07Subnet3Name,ParameterValue=$subnet3name ParameterKey=08Subnet3CidrBlock,ParameterValue=$cidr_three ParameterKey=09Subnet4Name,ParameterValue=$subnet4name ParameterKey=10Subnet4CidrBlock,ParameterValue=$cidr_four)"


##########Parameter input for 2 public subnets and 2 private subnets############
elif [[ $input -eq 2 ]]; then
    read -p 'Input name for Private Subnet 1: ' subnet1name
    read -p 'CIDR block for Private Subnet 1:' cidr_one
    read -p 'Input name for Private Subnet 2: ' subnet2name
    read -p 'CIDR block for Private Subnet 2:' cidr_two
    read -p 'Input name for Public Subnet 3: ' subnet3name
    read -p 'CIDR block for Public Subnet 3:' cidr_three
    read -p 'Input name for Public Subnet 4: ' subnet4name
    read -p 'CIDR block for Public Subnet 4:' cidr_four
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
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two ParameterKey=07Subnet3Name,ParameterValue=$subnet3name ParameterKey=08Subnet3CidrBlock,ParameterValue=$cidr_three ParameterKey=09Subnet4Name,ParameterValue=$subnet4name ParameterKey=10Subnet4CidrBlock,ParameterValue=$cidr_four)"

##########Parameter input for 1 public subnets and 3 private subnet############
elif [[ $input -eq 3 ]]; then
    read -p 'Input name for Private Subnet 1: ' subnet1name
    read -p 'CIDR block for Private Subnet 1:' cidr_one
    read -p 'Input name for Private Subnet 2: ' subnet2name
    read -p 'CIDR block for Private Subnet 2:' cidr_two
    read -p 'Input name for Private Subnet 3: ' subnet3name
    read -p 'CIDR block for Private Subnet 3:' cidr_three
    read -p 'Input name for Public Subnet 4: ' subnet4name
    read -p 'CIDR block for Public Subnet 4:' cidr_four
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
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two ParameterKey=07Subnet3Name,ParameterValue=$subnet3name ParameterKey=08Subnet3CidrBlock,ParameterValue=$cidr_three ParameterKey=09Subnet4Name,ParameterValue=$subnet4name ParameterKey=10Subnet4CidrBlock,ParameterValue=$cidr_four)"

##########Parameter input for 4 private subnets############
elif [[ $input -eq 4 ]]; then
    read -p 'Input name for Private Subnet 1: ' subnet1name
    read -p 'CIDR block for Private Subnet 1:' cidr_one
    read -p 'Input name for Private Subnet 2: ' subnet2name
    read -p 'CIDR block for Private Subnet 2:' cidr_two
    read -p 'Input name for Private Subnet 3: ' subnet3name
    read -p 'CIDR block for Private Subnet 3:' cidr_three
    read -p 'Input name for Private Subnet 4: ' subnet4name
    read -p 'CIDR block for Private Subnet 4:' cidr_four
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
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one ParameterKey=05Subnet2Name,ParameterValue=$subnet2name ParameterKey=06Subnet2CidrBlock,ParameterValue=$cidr_two ParameterKey=07Subnet3Name,ParameterValue=$subnet3name ParameterKey=08Subnet3CidrBlock,ParameterValue=$cidr_three ParameterKey=09Subnet4Name,ParameterValue=$subnet4name ParameterKey=10Subnet4CidrBlock,ParameterValue=$cidr_four)"

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
