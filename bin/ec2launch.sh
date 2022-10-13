#!/bin/bash

read -p 'How many instances you would like to launch? (max of 4)' instances
read -p 'What would you like to name this stack?' stackname 



if [[ $instances -eq 1 ]]; then
    read -p 'Input type for EC2 instance (t2.micro,etc):' ectype
	read -p 'Input name for EC2 instance:' ecname
	read -p 'Input KeyPair Name:' eckey
	sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15 
    echo -e "."
    sleep .15
	echo -e "Launching 1 EC2 Instance....."
	echo -e "$(aws cloudformation create-stack --stack-name $stackname stack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_1_EC2.yml --parameters ParameterKey=VMInstanceType,ParameterValue=$ectype ParameterKey=VMInstanceName,ParameterValue=$ecname ParameterKey=KeyPair, ParameterValue=$eckey)"


# Launch command for 02 - 2 EC2 instances 

elif [[ $instances -eq 2 ]]; then
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec1type
	read -p 'Input name for EC2 instance:' ec1name
	read -p 'Input KeyPair Name:' ec1key
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec2type
	read -p 'Input name for EC2 instance:' ec2name
	read -p 'Input KeyPair Name:' ec2key
	sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15 
    echo -e "."
    sleep .15
	echo -e "Launching 2 EC2 Instances....."
	echo -e "$(aws cloudformation create-stack --stack-name $stackname --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_2_EC2s.yml --parameters ParameterKey=VMInstance1Type,ParameterValue=$ec1type ParameterKey=VMInstance1Name,ParameterValue=$ec1name ParameterKey=KeyPair1, ParameterValue=$ec1key ParameterKey=VMInstance2Type,ParameterValue=$ec2type ParameterKey=VMInstance2Name,ParameterValue=$ec2name ParameterKey=KeyPair2, ParameterValue=$ec2key)"


# Launch command for 3 EC2 instances

elif [[ $instances -eq 3 ]]; then
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec1type
	read -p 'Input name for EC2 instance:' ec1name
	read -p 'Input KeyPair Name:' ec1key
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec2type
	read -p 'Input name for EC2 instance:' ec2name
	read -p 'Input KeyPair Name:' ec2key
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec3type
	read -p 'Input name for EC2 instance:' ec3name
	read -p 'Input KeyPair Name:' ec3key
	sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15 
    echo -e "."
    sleep .15
	echo -e "Launching 1 EC2 Instance....."
	echo -e "$(aws cloudformation create-stack --stack-name $ecname stack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_3_EC2s.yml --parameters ParameterKey=VMInstance1Type,ParameterValue=$ec1type ParameterKey=VMInstance1Name,ParameterValue=$ec1name ParameterKey=KeyPair1, ParameterValue=$ec1key ParameterKey=VMInstance2Type,ParameterValue=$ec2type ParameterKey=VMInstance2Name,ParameterValue=$ec2name ParameterKey=KeyPair2, ParameterValue=$ec2key ParameterKey=VMInstance3Type,ParameterValue=$ec3type ParameterKey=VMInstance3Name,ParameterValue=$ec3name ParameterKey=KeyPair3, ParameterValue=$ec3key)"


# Launch command for 4 EC2 instances 

elif [[ $instances -eq 4 ]]; then
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec1type
	read -p 'Input name for EC2 instance:' ec1name
	read -p 'Input KeyPair Name:' ec1key
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec2type
	read -p 'Input name for EC2 instance:' ec2name
	read -p 'Input KeyPair Name:' ec2key
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec3type
	read -p 'Input name for EC2 instance:' ec3name
	read -p 'Input KeyPair Name:' ec3key
    read -p 'Input type for EC2 instance (t2.micro,etc):' ec4type
	read -p 'Input name for EC2 instance:' ec4name
	read -p 'Input KeyPair Name:' ec4key
	sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15
    echo -e "."
    sleep .15 
    echo -e "."
    sleep .15
	echo -e "Launching 1 EC2 Instance....."
	echo -e "$(aws cloudformation create-stack --stack-name $ecname stack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_4_EC2s.yml --parameters ParameterKey=VMInstance1Type,ParameterValue=$ec1type ParameterKey=VMInstance1Name,ParameterValue=$ec1name ParameterKey=KeyPair1, ParameterValue=$ec1key ParameterKey=VMInstance2Type,ParameterValue=$ec2type ParameterKey=VMInstance2Name,ParameterValue=$ec2name ParameterKey=KeyPair2, ParameterValue=$ec2key ParameterKey=VMInstance3Type,ParameterValue=$ec3type ParameterKey=VMInstance3Name,ParameterValue=$ec3name ParameterKey=KeyPair3, ParameterValue=$ec3key ParameterKey=VMInstance3Type,ParameterValue=$ec4type ParameterKey=VMInstance3Name,ParameterValue=$ec4name ParameterKey=KeyPair3, ParameterValue=$ec4key)"

elif [[ $instances = b ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"

else 
    echo -e "\n.\n.\n.\n.Please enter a valid response (1-4 or b to go back)\n\n"

fi

echo -e "$(aws cloudformation wait stack-create-complete --stack-name $stackname)" &
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
echo -e "$stackname is up and running!\n\n"

exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
