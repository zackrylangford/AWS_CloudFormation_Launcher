#!/bin/bash

#Ask user to input the name of the VPC 

read -p 'Input a name for your VPC:' vpc_name
read -p 'Cidr block for VPC:' vpc_cidr


echo -e "Would you like your 1 subnet to be public or private? (press b for main menu)"

read input

##########Parameter input for 1 public subnet############
if [[ $input = public ]]; then
    read -p 'Input name for Subnet 1:' subnet1name
    read -p 'CIDR block for Subnet 1:' cidr_one
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
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_1_Pub.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one)"

##########Parameter input for 1 private subnet############
elif [[ $input = private ]]; then
    read -p 'Input name for Subnet 1:' subnet1name
    read -p 'CIDR block for Subnet 1:' cidr_one
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
    echo -e "$(aws cloudformation create-stack --stack-name $vpc_name --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_1_Priv.yml --parameters ParameterKey=01VPCName,ParameterValue=$vpc_name ParameterKey=02VPCCidrBlock,ParameterValue=$vpc_cidr ParameterKey=03Subnet1Name,ParameterValue=$subnet1name ParameterKey=04Subnet1CidrBlock,ParameterValue=$cidr_one)"


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
