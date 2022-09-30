### Notes to help guide my work


### Next Steps
COMPLETE _______ 1. Get program to the point where it will output what I need it to in text format first (don't worry about running the actual commands at this point)

COMPLETE__________ Milestone 1 - Text output is correctly outputting the command that needs to run 

2. Create a really basic template that has NO parameters to pass through to test launch capabilities 

3. Change the code to actually execute the script and send it to AWS

4. Connect my AWS CLI account and make a quick test bucket to see if it works

5. Run the CloudLauncher Program to see if it works

6. Add code to have the status of the stack run (need to find the code for the status)

COMPLETE__ Milestone 2 - The code works!!! I can go through the menu and launch stack templates from the menu. 

The next challenge will be to figure out how to pass parameters to the templates so that I can customize the templates before they are launched. 

I need the program to let me select the template I want to launch, then prompt me for each parameter, then input those parameters into the aws cloudformation command along with the template, which should pass the parameters through and create the resources with the correct parameters! 


Milestone 3 - Passing Parameters so that the templates are customizable. 



### Refactoring Tasks 

1. Make the user selection prompts more simplified. Instead of one big list of options, have them select a category first, then the resources, which narrows down the templates
and makes it less overwhelming for the user.



### When it's time to actually launch
1. Make sure that my AWS CLI is connected and working in the Linux terminal
2. See if I am able to use the StackRoute Lab so I don't have to mess around with mine. 


### Down the road
1. Have this output the status of the cloudformation stack being built so the user doesn't have to log into the console, they can just launch it from the command line (eventually,
this will be done from the GUI with status graphics, error messages, etc.)
2. Run this program in the GUI
3. Have it automatically add user information from AWS (CLI information so the user doesn't have to go and find it or remember it)
4. Have it save the users info and allow them to remain logged in so they can 
5. Figuring out how to configure the installation of the script and program on a new users machine so everything is in the right place and the script knows where to call for the templates (which directory the templates will be located in on the users machine) 
6. Need to add code to delete the stack if there are any errors in creating the stack. (i.e. when there is an error creating the stack, it should automatically delete the stack). How would that work? Would you put conditions in it? 
7. Need to figure out how to allow for custom parameters (these can actually be passed through the bash script and then the template will catch them)






### Current configuration notes

I have a cloudformation directory on my Linux VM where I am storing the templates. I have to run the script out of this directory currently for it to work.


### Random thoughts

What about keypairs? Should there be away to create a key pair and then pull the name??? What about a quick script to create a keypair and return the name of the keypair so that when you go to make an ec2, it is ready to go??? Need to lookup the CLI command to create a key pair and print the key pair name. 

Need to organize these thoughts better :) 




