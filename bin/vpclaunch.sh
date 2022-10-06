#!/bin/bash

# This section will send the user to the appropriate script for selecting the right subnet configuration

echo -e "How many subnets would you like to have in your VPC? (1-4)"

read input

#For a single subnet in the VPC
if [[ $input -eq 1 ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/VPC1Sub.sh"

#For two subnets in the VPC
elif [[ $input -eq 2 ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/VPC2Sub.sh"

#For three  subnets in the VPC
elif [[ $input -eq 3 ]]; then
    exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/VPC3Sub.sh"

#For four subnets in the VPC
elif [[ $input -eq 4 ]]; then
    exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/VPC4Sub.sh"


elif [[ $input = q ]]; then
	echo -e "\n\n\nQuitting Now"
	sleep .25
	echo -e "."	
	sleep .25
	echo -e "."	
	sleep .25
	echo -e "."
	sleep .25
	echo -e "Goodbye..."
	break

else
	echo -e "\n.\n.\n.\n.Please enter a valid response (1-4 or q to quit)\n\n"
fi
done