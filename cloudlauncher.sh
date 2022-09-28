#!/bin/bash

while [[ ${can_continue}=true ]]; do

	echo -e "What CloudFormation Template would you like to launch today?"
	echo -e "\n1. Single VPC with 4 subnets"
	echo -e "\n2. One EC2 Instance"
	echo -e "\n3. Two EC2 Instances"
	echo -e "\n4. Three EC2 Instances"
	echo -e "\n5. Four EC2 Instances"
	echo -e "\n6. One S3 Bucket"
	echo -e "\n\nPress q to quit the program."

read input

if [[ $input -eq 1 ]]; then
	echo -e "You have selected a single VPC with 4 subnets\n"
	
	
### Actual Commands for later use
### echo -e "$(hostname)\n\n"
elif [[ $input -eq 2 ]]; then
	echo -e "You have selected One EC2 Instance\n"


### Actual Commands for later use
### echo -e "$(cat /etc/os-release)\n\n"

elif [[ $input -eq 3 ]]; then
	echo -e "You have selected Two EC2 Instances\n"


### Actual Commands for later use
### echo -e "$(top -b -n 1)\n\n"
elif [[ $input -eq 4 ]]; then
	echo -e "You have selected Three EC2 Instances\n"
	
### Actual Commands for later use	
### echo -e "$(df -h)\n\n"
elif [[ $input -eq 5 ]]; then
	echo -e "You have selected Four EC2 Instances\n"

### Actual Commands for later use
### echo -e "$(free)\n\n"
elif [[ $input -eq 6 ]]; then
	echo -e "You have seleved one S3 Bucket\n"

### Actual Commands for later use
### echo -e "$(free)\n\n"


elif [[ $input = q ]]; then
	echo "Quitting Now"
	break
	
else
	echo -e "Please enter a valid response (1-5 or q to quit)\n\n"
fi
done
