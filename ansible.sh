#Ansible commands 

ansible  --help                                                     #overview of all available options 

#######
#Test connectvity 
#######
ansible all -m ping                                                 #test if you have valid credentials for connecting to the nodes defined in inventory file<hosts>. 
ansible all -m ping -u <username>                                   #connect as a different user

#######
#Connect as a diff user 
#######
ansible-playbook myplaybook.yml -u <username>                       #connect as a different user
ansible all -m ping --private-key=~/.ssh/custom_id                  #use custom SSH key to connect to the remote servers

#######
#SSH key
#######
ansible-playbook myplaybook.yml --private-key=~/.ssh/custom_id      #use custom SSH key to connect to the remote servers


#######
#Run playbook and getting info
#######
ansible-playbook <playbook-name>.yml                                #run a playbook that executes all the tasks defined in the yaml file
ansible-playbook myplaybook.yml --list-tasks                        #list all tasks that would be executed by a play without making any changes 
ansible-playbook myplaybook.yml --list-tags                         #list all tags available in a play
ansible-playbook myplaybook.yml --start-at-task="Set Up Nginx"      #defines an enty point for the playbook. Skips anything that comes before the listed task
ansible-playbook myplaybook.yml --tags=mysql,nginx                  #only executes tasks associated with specified tags.


#######
#Debugging 
#######
ansible-playbook myplaybook.yml -v                                  #outputs verbosity to get more information about the problems
ansible-playbook myplaybook.yml -vvvv                               #increases the verbosity of the output 


