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

# terraform init flags: terraform init [options] [DIR]
-backend-config=cfg/s3.dev.tf - reconfigure   #Changes backend config during initialization 
-input=true                                 #Ask for input if necessary. If false, will error if input was required.
-lock=false                                 #Disable locking of state files during state-related operations.
-lock-timeout=<duration>                    #Override the time Terraform will wait to acquire a state lock. The default is 0s (zero seconds), which causes immediate failure if the lock is already held by another process.
-no-color                                   #Disable color codes in the command output.
-upgrade                                    #Opt to upgrade modules and plugins as part of their respective installation steps. 
-from-module=MODULE-SOURCE                  #The given module will be copied into the target dir before other initialization steps are run

#Backend init flags  
-force-copy                                 #Rerunning init with an initialized backend updates the dir to use the new backend settings, this could cause a prompt to confirm migration changes. This command is used to bypass that confirmation prompt. 
-reconfigure                                #Stops migration of an existing state
-backend=false                              #Skips backend configuration 
-backend-config=...                         #Used for partial backend configuration 

#Child Module init flags 
-upgrade                                    #changes default behavior of rerunning init not changing any already-installed modules.It will update all modules to the latest available source code
-get=false                                  #Skips child module install 

#plugin init flags 
-upgrade                                    #used to update all providers to the latest acceptable version  
-get-plugins=false                          #Skips plugin installation 
-plugin-dir=PATH                            #Skips plugin installation and only loads plugins form the specified dir
-verify-plugins=false                       #Skips release signature validation when installing. Not recommended. 

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
#apply and refresh 
########
terraform apply                            #Applies execution plan and builds the stack
terraform refresh                          #Used to reconcile the state Terraform knows about (via its state file) with the real-world infrastructure. 
# terraform apply and refresh flags
-backup=path                               #Path to the backup file 
-compact-warnings                          #Warning messages are shown in compact form
-lock=true                                 #Lock the state file when its supported
-lock-timeout=0s                           #Time to retry a state lock
-input=true                                #Get input if not set
-auto-approve                              #Skip approval prompt 
-no-color                                  #No color with the output 
-parallelism=n                             #Deaults to 10, limit the number of concurrent operations
-refresh=true                              #Updates the state for each resource before planning and applying
-state=path                                #Path to the state file. Defaults to "terraform.tfstate". Ignored when remote state is used.
-state-out=path                            #Path to write updated state file. By default, the -state path will be used. Ignored when remote state is used.
-target=resource                           #Targets a resource address
-var 'foo=bar'                             #Sets a variable in the configuration 
-var-file=foo                              #Sets a variable in the configuration from a variable vile 

#########
#destroy 
#########
terrafrom destroy                           #Takes down all resouces that were created 

# terraform destory flags: terraform init [options] [DIR]
-auto-approve                              #Destory confirmation won't be shown
-target                                    #Will destory targeted resources 
terraform plan -destroy

#########
#graph 
#########
terraform graph                            #Creates a visual graph of Terraform resources
[terraform graph > web.dot 
dot web.dot -Tsvg -o web.svg]              #Creates a graph and saves it as a .svg 

#########
#validate and formatting 
#########
terraform validate                         #Checks the syntax, validates the configuration files, and returns any errors 
terraform fmt                              #Formats configuration files 

# terraform validate flags
-json                                      #Output in json format
-no-color                                  #Output won't contian any color
# terraform fmt flags
-list=false                                #Don't lisst the files containing formatting inconsistencies 
-write=false                               #Don't overwrite the input files. (This is implied by -check or when the input is STDIN.)
-diff                                      #Display diffs of formatting changes
-check                                     #Check if the input is formatted. Exit status will be 0 if all input is properly formatted and non-zero otherwise.
-recursive                                 #Also process files in subdirectories. By default, only the given directory (or current directory) is processed.

#########
#providers 
#########
terraform providers                        #Tree of providers used by modules in your project 

#########
#state 
#########
terraform state pull > terraform.tfstate   #Pulls remote state in a local copy 
terraform state push                       #Pushes state  in remote backend storage 

###########
#workspaces 
###########
terraform workspace new dev               #Creates a new workspace and then selects it 
terraform workspace select dev            #Selects a workspace 
terraform workspace list                  #List workspaces 

###########
#More CLI  
###########
terraform taint                           #Marks a resource as tainted, forcing it to be destroyed and recreated on the next apply

# terraform taint flags: terraform taint [options] address
#address argument is the address of the resource to mark as tainted. 
-allow-missing                           #If specified, the command will succeed (exit code 0) even if the resource is missing. The command can still error, but only in critically erroneous cases.
-backup=path                             #Path to the backup file. Defaults to -state-out with the ".backup" extension. Disabled by setting to "-".
-lock=true                               #Lock the state file when locking is supported.
-lock-timeout=0s                         #Duration to retry a state lock.
-state=path                              #Path to read and write the state file to. Defaults to "terraform.tfstate". Ignored when remote state is used.
-state-out=path                          #Path to write updated state file. By default, the -state path will be used. Ignored when remote state is used.