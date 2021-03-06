# Project-Automation
A shell command for linux systems to automate the project creation process

# What does it do?
Check if a similar project already exists in Filepath.\
Check if a similar project already exists on your GitHub.\
Create a Public or Private GitHub repository.\
Validates repository creation.\
Creates new directory in Filepath with a README file.\
Makes an initial commit and push to remote repository.\
Launches directory in VisualStudio Code.

# Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites
Should be running a linux based system.\
Should have python3 installed.\
Should have git installed.\
Should have VisualCode installed.\
Should have personal github access token.

## Installing
```
fork the project
git clone "https://github.com/<Your Github Username>/Project-Automation.git"
cd Project-Automation"
Open the .env file and replace values
Open create.py and replace GitHub credentials
pip3 install PyGithub
source ~/.bashrc (after Adding Command to the System)
```

## Adding Command to System
```
cd ~
Open .bashrc on any text editor
Add source <path to Project-Automation>/.auto-command.sh at the bottom
```

## Usage
For a public repository
```
create-project <project-name>
```

For a private repository
```
create-project <project-name> -p
```

## Authors
Shivanshu Bansal

## License
This project is licensed under BSD 3-Clause License - see [LICENSE.md](../master/LICENSE) for more details.
