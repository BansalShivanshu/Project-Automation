# Project-Automation
A shell command for linux systems to automate the project creation process

# Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites
Should be running a linux based system.\
Should have python3 installed.\
Should have personal github access token.\

## Installing
```
git clone "https://github.com/BansalShivanshu/Project-Automation.git"
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
