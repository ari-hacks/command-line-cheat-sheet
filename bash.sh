#Bash Cheat Sheet 

######################
#System Basics  
######################
date            #Show date and time
uptime          #Display system uptime
cal             #Show calendar
w               #Display who is logged in
whoami          #Display effective username
finger user     #Show info about user
df              #Display free disk space
du              #Display disk usage stats
du -sh          #Displays total(s - summarize) human(h) readable size in GB 
free            #Show memory and swap usage
uname -a        #Show system and kernel
mount           #Show mounted filesy­stems
man <command>   #Show manual for command
clear           #Clears the command line window 
history         #Show command history 
hostname        #Get the current hostname 
users           #Get the curent users 
env             #Get all info about the environment
exit            #Exit Terminal 
last            #Listing of the last users that logged into the system

######################
#Directory Operations
######################
pwd            #Show current directory
mkdir <dir>    #Create a directory 
cd <dir>       #Change directory 
cd ..          #Go up a directory 
ls             #List files 

#ls options 

ls -a          #Shows all files  including hidden 
ls -l          #Shows long listing 
ls -al         #Shows long listing of directory contents including hidden files 
ls -t          #Sort by last modified
ls -S          #Sort by file size
ls -1          #One file per line
ls -m          #Comma-­sep­arated output

######################
#Shortcuts   
######################
CTRL-c         #Stop current command
CTRL-z         #Sleep program
CTRL-a         #Go to start of line
CTRL-e         #Go to end of line
CTRL-r         #Search history
!!             #Repeat last command
!abc           #Run last command starting with abc
!abc:p         #Print last command starting with abc
!$             #Last argument of previous command
        
######################
#Files    
######################
grep "text" <files>     #Output all occurrences of text in file (add -i for case insensitivity)
grep -rl "text" <dir>   #Search for all file containing text inside dir
grep -r                 #Recursive search
grep -v                 #Inverted search
grep -o                 #Show matched part of file only

find <dir> -name "file" #Find all files named file inside dir ([*] wildcard searches for parts of filenames. Ex/ "file.*")
whereis command         #Find binary / source / manual for command
locate <file>           #Find file (quick search of system index)
touch <file>            #Create file
cat <file1> <file2>     #Concat­enate files and output
cat <file>              #Output the contents of the file 
less <file>             #View and paginate file
file <file>             #Get type of file
cp <file> <dir>         #Copy file to directory
cp -r <dir1> <dir2>     #Copy dir1 and its contents to dir2 - may overwrite files in an existing directory
mv <name1> <name2>      #Rename file from name1 to name2
mv <file> <dir>         #Move file to directory 
rm <file>               #Delete file -f for Force-delete
rm -r <dir>             #Delete directory        
head <file>             #Show first 10 lines of file
tail <file>             #Show last 10 lines of file
tail -F <file>          #Output last lines of file1 as it changes

######################
#Processes    
######################
ps                  #Output snapshot of processes
ps ax               #Output currently running processes 
top                 #Output real time processes
kill <pid>          #Kill process with id pid
kill -9 <pid>       #Generates a SIGKILL - doesn't check the state of the process and kills the process immediately
pkill <name>        #Kill process with name name
killall <name>      #Kill all processes with names beginning name
ps aux | grep <processes>        #Output running <processes>
lsof -i TCP:8000 | grep LISTEN   #Searches for a processes running on a specified port 

######################
#Network    
######################
ping <host>             #Ping host and display status 
whois <domain>          #Output whois information for <domain>
ssh <username>@<host>   #SSH connection to host with username 

######################
#File Permis­sions     
######################
chmod 775 <file>             #Change mode of file to 775
chmod -R 600 <dir>           #Change permissions of dir and its contents to 600
chown <user>:<group> <file>  #Change ownership of file to user and group - add -R to include a dir's contents 
chmod +x <file-name>.sh     #Sets executable flag without changing permissions 
