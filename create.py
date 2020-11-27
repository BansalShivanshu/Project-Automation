from github import Github
import sys
import os

# check if the number of arguments supplied is not optimal
if len(sys.argv) < 2 or len(sys.argv) > 3:
    print("Incorrect usage")
    print("Correct Usages: \n\tcreate-project <project-name>")
    print("\tcreate-project <project-name> -p")
    sys.exit(1)

# do we want the repo to be private or public?
setPrivate = False
if len(sys.argv) == 3:
    if sys.argv[2].lower() == '-p':
        setPrivate = True

def create_project():
    projectName = sys.argv[1]

    # github creadentials
    username = "YOUR-USERNAME"
    token = "YOUR-GITHUB-TOKEN"

    git = Github(username, token)
    user = git.get_user()

    repos = user.get_repos()

    # check if a repo already exists
    for repo in repos:
        if repo.name == projectName:
            print(repo.name + " already exists!")
            print("aborting...")
            sys.exit(1)

    if setPrivate == True:
        user.create_repo(projectName, private=True)
    else:
        user.create_repo(projectName)

    created = False
    repos = user.get_repos()
    for repo in repos:
        if repo.name == projectName:
            created = True
            break

    if created == True:
        print("Repo " + repo.name + " Created Successfully")
        if repo.private == True:
            print("Visibility set to Private")
        else:
            print("Visibility set to Public")
    else:
        print("Something went wrong!")
        print("Abborting...")
        sys.exit(1)


if __name__ == "__main__":
    create_project()