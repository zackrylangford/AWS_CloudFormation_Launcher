#!/bin/bash
	
	echo -p 'What would you like to name this stack?:' stackname 
	echo -p 'What would you like to name this bucket?:' bucketname
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
	echo -e "$(aws cloudformation create-stack --$stackname --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/03_1_S3_Bucket.yml --parameters ParameterKey=BucketName,ParameterValue=$bucketname)"
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
	echo -e "$(aws cloudformation wait stack-create-complete --stack-name $stackname)"
	echo -e "$(aws cloudformation describe-stack-resources --stack-name $stackname)\n.\nLaunch successful!!!\n."

    exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
