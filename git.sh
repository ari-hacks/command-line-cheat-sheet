#Git commands 

######################
#Create Repositories 
######################
git init                        #Turn an existing directory into a git repo
git clone [url]                 #Clone a repo that already exists on Github
.gitgnore                       #Special file that ignores commits for directories and files named in it 
git status                      #Shows which files are in the staging area/working directory
######################
#Configure Tooling
######################
git config --global user.name "[name]"              #Sets the name you want attached to your commit transactions
git config --global user.email "[email address]"    #Sets the email you want attached to your commit transactions  
git config --global color.ui auto                   #Enables helpful colorization of command line output

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
git fetch                      #Downloads all history from the remote tracking branches
git merge                      #Combines remote tracking branch into current local branch
git rebase                     #Integrates changes from one branch onto another
git push                       #Uploads all local branch commits to GitHub
git push origin main         #Uploads to main branch 
git push origin [branch-name]  #Push changes to branch 
git pull [remote]              #Updates your current local working branch with all new commits from the corresponding remote branch on GitHub. git pull is a combination of git fetch and git merge 

######################
#Make Changes 
######################
git log                        #Lists version history for the current branch
git log --oneline              #Lists version history in one line 
git log --follow [file]        #Lists version history for a file, including renames
git diff [first-branch]...[second-branch] #Shows content differences between two branches
git show [commit]              #Outputs metadata and content changes of the specified commit
git add [file]                 #Snapshots the file in preparation for versioning
git rm --cached [file]         #Unstages any file in the staging area 
git commit -m "[descriptive message]" #Records file snapshots permanently in version history

######################
#Stashing Changes  
######################
git stash            #if you need to switch branches but do not want to commit changes yet use stash to save a working copy on your stack while working on another branch
git stash list       #lists stashes you've stored
git stash applying   #applies most recent stash to branch 
git stash apply stash@{2}  #applies version of a stash to branch

######################
#Redo commits 
######################
git reset [commit]             #Undoes all commits after [commit], preserving changes locally
git reset --hard [commit]      #Discards all history and changes back to the specified commit
git reset --hard HEAD^         #Resets to the previous commit before the current head

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
#Pull Request 
######################
1. Fork Repo that you want to contriubte to 
2. run: > git clone [github/your-username/your-fork]
3. run: > cd [repo-name]
4. Add base repo as a remote
   > git remote add upstream [github/owner-username/original-repo]
5. Create a new branch with:
   > git checkout -b [branch-name]
6. Make changes to the repo 
7. Push changes to branch(not main):
     > git status #check changed files 
     > git add . or git add <file-name>
     > git commit -m "contributing"
     > git push origin [branch-name]
8. Select Comapre & pull request from the forked Github repo
9. Select create a new pull request on Github 


######################
#Syncing your forked repo to the original repo
######################
1. Navigate to the forked repo you want to sync with the original repo
2. Add the original repo as an upstream repro
   > git remote add upstream [github/owner-username/original-repo]
3. List the currently configured remote repositories
   > git remote -v
   This should output:
   > origin [github/your-username/your-fork] (fetch)
   > origin [github/your-username/your-fork] (push)
   > upstream [github/owner-username/original-repo] (fetch)
   > upstream [github/owner-username/original-repo] (push)

4. Merge the original repo into your fork 
   1. Navigate to the forked repo
   2. Fetch all the changes from the original repo(commits to the original repo will be stored in a local branch called upstream/main)
      > git fetch upstream
   3. If not already navigate to the main branch
      > git checkout main
   4. Merge changes from upstream/main into your local main branch(any conflicts will need to be resolved)
      > git merge upstream/main
   5. Now you are up to date locally and can sync your forked github repo with the updates
      > git push origin main
        
