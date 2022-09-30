#!/bin/bash

    echo -e "How many instances you would like to launch? (max of 4)"
    echo -e "\n\nPress b to go back to main menu"

read instances

if [[ $instances -eq 1 ]]; then
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
	# echo -e "$(aws cloudformation create-stack --stack-name myteststack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_2_EC2_NO_PARAMETERS.yml)"
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1 
	echo -e "."
	sleep 1
	echo -e "Launch Successful!" 
	# echo -e "$(aws cloudformation wait stack-create-complete --stack-name myteststack)"
	# echo -e "$(aws cloudformation describe-stack-resources --stack-name myteststack)\n.\nLaunch successful!!!\n."
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
# Launch command for 02 - 2 EC2 instances 

elif [[ $instances -eq 2 ]]; then
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
	# echo -e "$(aws cloudformation create-stack --stack-name myteststack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_2_EC2_NO_PARAMETERS.yml)"
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1 
	echo -e "."
	sleep 1
	echo -e "Launch Successful!" 
	# echo -e "$(aws cloudformation wait stack-create-complete --stack-name myteststack)"
	# echo -e "$(aws cloudformation describe-stack-resources --stack-name myteststack)\n.\nLaunch successful!!!\n."
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
# Launch command for 3 EC2 instances
elif [[ $instances -eq 3 ]]; then
	sleep .15
	echo -e "."
	sleep .15
	echo -e "."
	sleep .15
	echo -e "."
	sleep .15 
	echo -e "."
	sleep .15
	echo -e "Launching 3 EC2 Instances....."
	# echo -e "$(aws cloudformation create-stack --stack-name myteststack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_2_EC2_NO_PARAMETERS.yml)"
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1 
	echo -e "."
	sleep 1
	echo -e "Launch Successful!" 
	# echo -e "$(aws cloudformation wait stack-create-complete --stack-name myteststack)"
	# echo -e "$(aws cloudformation describe-stack-resources --stack-name myteststack)\n.\nLaunch successful!!!\n."
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
# Launch command for 4 EC2 instances 
elif [[ $instances -eq 4 ]]; then
	sleep .15
	echo -e "."
	sleep .15
	echo -e "."
	sleep .15
	echo -e "."
	sleep .15 
	echo -e "."
	sleep .15
	echo -e "Launching 4 EC2 Instances....."
	# echo -e "$(aws cloudformation create-stack --stack-name myteststack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/02_2_EC2_NO_PARAMETERS.yml)"
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1
	echo -e "."
	sleep 1 
	echo -e "."
	sleep 1
	echo -e "Launch Successful!" 
	# echo -e "$(aws cloudformation wait stack-create-complete --stack-name myteststack)"
	# echo -e "$(aws cloudformation describe-stack-resources --stack-name myteststack)\n.\nLaunch successful!!!\n."
  	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"

elif [[ $instances = b ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"

else 
    echo -e "\n.\n.\n.\n.Please enter a valid response (1-4 or b to go back)\n\n"
