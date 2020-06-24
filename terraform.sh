# Terraform Cheat Sheet 


#########
#installation & Checks 
########
 brew install terraform                     #OS X
 choco install terraform                    #Windows
 terraform -install-autocomplete            #With bash or zsh can enable tab completion for commands 
 terraform --version                        #Displays version 
 terraform show                             #Displays a full list of all resources and their attributes 
 terraform output                           #Displays the output with applying the configuration again, -json for machine readable JSON format

#########
#init 
########
terraform init                              #First command to execute this initializes the working dir, installs Terraform moduels, a backend, provider plugins
terraform init -input=false                 #Init Terraform w/0 any input 
terraform init -backend-config=cfg/s3.dev.tf - reconfigure   #Changes backend config during initialization 

########
#get 
#######
terraform get                               #Pulls modules into the .terraform dir 
terraform get -update=true                  #Updates moduels 

########
#plan 
########
terraform plan                              #Scans all *.tf files in your dir and creates the plan - doesn't execute just ensures the config is going to do what is expected.  


########
#apply 
########
terraform apply                             #Applies execution plan and builds the stack

#########
#destroy 
#########
terrafrom destroy                           #Takes down all resouces that were created 

#########
#graph 
#########
terraform graph                             #Creates a visual graph of Terraform resources
[terraform graph > web.dot 
dot web.dot -Tsvg -o web.svg]               #Creates a graph and saves it as a .svg 

#########
#validate and formatting 
#########
terraform validate                          #Checks the syntax, validates the configuration files, and returns any errors 
terraform fmt                               #Formats configuration files 

# terraform fmt flags: terraform fmt [options] [DIR]
-list=false                                 #Don't lisst the files containing formatting inconsistencies 
-write=false                                #Don't overwrite the input files. (This is implied by -check or when the input is STDIN.)
-diff                                       #Display diffs of formatting changes
-check                                      #Check if the input is formatted. Exit status will be 0 if all input is properly formatted and non-zero otherwise.
-recursive                                  #Also process files in subdirectories. By default, only the given directory (or current directory) is processed.

#########
#providers 
#########
terraform providers                        #Tree of providers used by modules in your project 

#########
#state 
#########
terraform state pull > terraform.tfstate  #Pulls remote state in a local copy 
terraform state push                      #Pushes state  in remote backend storage 

###########
#workspaces 
###########
terraform workspace new dev            #Creates a new workspace and then selects it 
terraform workspace select dev         #Selects a workspace 
terraform workspace list               #List workspaces 

