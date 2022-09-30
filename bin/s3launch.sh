#!/bin/bash

	sleep .15
	echo -e "."
	sleep .15
	echo -e "."
	sleep .15
	echo -e "."
	sleep .15 
	echo -e "."
	sleep .15
	echo -e "Launching 1 S3 Bucket....."
	# echo -e "$(aws cloudformation create-stack --stack-name myteststack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/03_1_S3_Bucket_NO_Parameters.yml)"
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

    exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/menu"