#!/bin/bash

# Parameters will go here and then they will be added to the create-stack command below

sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15 
echo -e "."
sleep .15
echo -e "Launching VPC with 4 Subnets....."
echo -e "$(aws cloudformation create-stack --stack-name myteststack --template-body file:///home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/templates/01_VPC_with_4_Subnets.yml)"
sleep 1
echo -e "."
sleep 1
echo -e "."
sleep 1
echo -e "."
sleep 1 
echo -e "."
sleep 1
echo -e "Launch Successful!.\n\n\n\n" 
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15
echo -e "."
sleep .15 
echo -e "."
sleep .15
echo -e "$(aws cloudformation wait stack-create-complete --stack-name myteststack)"
echo -e "$(aws cloudformation describe-stack-resources --stack-name myteststack)\n.\nLaunch successful!!!\n."

exec "/home/zackry/cloudlauncher/AWS_CloudFormation_Launcher/bin/menu.sh"
