######################
#Install golang, cobra, and setup a project 
######################
1. Install golang: > brew install go | or check out official install https://golang.org/doc/install#install
2. Create a new project and cd into it
3. Install cobra library: > go get -u github.com/spf13/cobra/cobra
4. Create a project: > cobra init --pkg-name <project-name>
5. Install go modules: > go mod init <project-name>
6. Install & Build: 
   > go install <project-name>
   > go build <project-name>
7. Now you can run <project-name> to use the Cli
8. Add commands: > cobra add <command-name>
