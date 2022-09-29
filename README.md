

# Overview of the goals of the program: 

CloudLauncher is a program that makes using the CLI interface of AWS much simpler.

 that automates the process of launching resources on AWS through the use of CloudFormation. 

The user is prompted to select the resources that they would like to launch, the program prompts them to input custom parameters such as name of the resource, and gives options for various inputs 
Once the user completes the parameter input, CloudLauncher runs the corresponding commands so the user doesn't have to memorize the correct commands and syntax. 

This makes the CLI interface usable for anyone!

### Problems this addresses:
The user doesn't have to log into AWS Console or memorize the CLI commands. 
The user can take advantage of the speed of the AWS CLI without having to memorize all of the possible commands. 
The user can take advantage of CloudFormation stacks without having to go through the often painstaking process of writing templates and verifying them. 


### Where the project is currently at
This project is in the initial stages, working towards the milestone of simply being able to launch a single template from the command line. 

Milestone 1 - Launch a simple template from the Command Line - COMPLETED

Milestone 2 - Passing Parameters - the next milestone will be to get the program to be able to prompt the user for the correct parameters and pass the input to the correct AWS command and then run the command. 

Milestone 3 - Add enough templates to cover major resources. 

Milestone 4 - Add the ability to create change sets and edit resources on the fly

Milestone 5 - Continue adding resources and features

Down the road: Potentially making a graphical interface and making versions to run on other operating systems beyond Linux
