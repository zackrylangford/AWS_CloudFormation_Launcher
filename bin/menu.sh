#!/bin/bash


while [[ ${can_continue}=true ]]; do
	echo -e "\nYou are back at the main menu\n" 
	echo -e "What would you like to launch?\n"
	echo -e "\n1. VPC"
	echo -e "\n2. EC2"
	echo -e "\n3. S3"
	echo "\nPress 'q' to quit"

read input
	echo -e "\n"
# For VPCs:
if [[ $input -eq 1 ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/vpclaunch.sh"

# For EC2 Instances 
elif [[ $input -eq 2 ]]; then
	exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/ec2launch.sh"

# For S3 Buckets
elif [[ $input -eq 3 ]]; then
exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/s3launch.sh"

elif [[ $input = q ]]; then
	echo -e "\n.\n.\n.\n.\nQuitting Now\n"
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
	echo -e "\n.\n.\n.\n.Please enter a valid response (1-5 or q to quit)\n\n"
fi
done
