#Git commands 

######################
#Create Repositories 
######################
git init                        #Turn an existing directory into a git repo
git clone [url]                 #Clone a repo that already exists on Github
.gitgnore                       #Special file that ignores commits for directories and files named in it 
git status                      #Shows which files are in the staging area 
######################
#Configure Tooling
######################
git config --global user.name "[name]"      #Sets the name you want attached to your commit transactions
git config --global user.email "[email address]"    #Sets the email you want attached to your commit transactions  
git config --global color.ui auto   #Enables helpful colorization of command line output

######################
#Branches
######################
git branch [branch-name]       #Creates a new branch
git checkout [branch-name]     #Switches to the specified branch and updates the working directory
git checkout -b [branch-name]  #Creates and switches to a branch 
git merge [branch]             #Combines the specified branch’s history into the current branch. This is usually done in pull requests,but is an important Git operation.
git branch -d [branch-name]    #Deletes the specified branch
git branch -D [branch-name]    #Force Delete even if branch is unmerged 
git branch -a                  #Checks branches 
git branch -m [branch-name]    #Renames branch 

######################
#Synchronize changes 
######################
git fetch                     #Downloads all history from the remote tracking branches
git merge                     #Combines remote tracking branch into current local branch
git push                      #Uploads all local branch commits to GitHub
git push origin master        #Uploads to master branch 
igt push origin [branch-name] #Push changes to branch 
git pull                      #Updates your current local working branch with all new commits from the corresponding remote branch on GitHub. git pull is a combination of git fetch and git merge 
######################
#Make Changes 
######################
git log                       #Lists version history for the current branch
git log --oneline             #Lists version history in one line 
git log --follow [file]       #Lists version history for a file, including renames
git diff [first-branch]...[second-branch] #Shows content differences between two branches
git show [commit]            #Outputs metadata and content changes of the specified commit
git add [file]               #Snapshots the file in preparation for versioning
git rm --cached [file]       #Unstages any file in the staging area 
git commit -m "[descriptive message]" #Records file snapshots permanently in version history

######################
#Redo commits 
######################
git reset [commit]    #Undoes all commits after [commit], preserving changes locally
git reset --hard [commit]   #Discards all history and changes back to the specified commit

# Note: Changing history can have nasty side effects. If you
# need to change commits that exist on GitHub (the remote),
# proceed with caution. If you need help, reach out at
# github.community or contact support.

######################
#Adding a Git Remote
######################
git remote add [remote-name][remote-url]
git remote -v   #Verify the remote connections

######################
#Conditionals 
######################
git commit && git push
git commit || echo "Commit failed"


######################
#Contributing to Open Source  
######################
1. Fork Repo that you want to contriubte to 
2. git clone [repo url]
3. git status   #Check the repo is up to date with the master branch 
4. Create a new branch with:
   - git checkout -b [branch-name]
5. Make changes to the repo 
6. Push changes to branch:
     - git add .
     - git commit -m "contributing"
     - git push origin [branch-name]
7. Comapre and Pull request from github 
8. Create a new pull request on github 