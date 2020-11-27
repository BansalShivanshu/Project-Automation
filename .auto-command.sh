#!/bin/bash

function create-project() {
    source ~/Projects/project-automation/.env

    # make sure one arg was passed
    if [ -z "$1" ]
    then
        echo "No argument supplied"
        echo "Correct usage: create-project <project-name>"
        return
    fi

    # make sure no more than 2 args are passed
    if [ "$#" -gt 2 ]
    then
        echo "Incorrect usage"
        echo "Correct Usages: \n\tcreate-project <project-name>"
        echo "\tcreate-project <project-name> -p"
        return
    fi

    # # replace whitespaces with '-'
    # fileName=$1
    # echo $fileName
    # fileName=$(tr -s ' ' '-' <<< "$fileName")
    # echo $fileName

    # create a new directory if no prior ones exist
    if [ -d $FILEPATH$1 ]
    then
        echo "Directory $1 already exists"
        echo "aborting..."
        return
    fi

    # # set the flag value
    # FLAG="False"
    # if [ "$2" ]
    # then
    #     if [ $2 == '-p' ]
    #     then
    #         FLAG="True"
    #     fi
    # fi

    # get to the Projects directory
    cd $FILEPATH

    # execute github web-processes
    python3 project-automation/create.py $1 $2

    # check the return value of python script
    if [ $? -eq 1 ]
    then
        return
    fi

    # make the directory
    mkdir $1
    echo "Directory $1 created"
    echo "Changing current directory to $1"
    cd $1

    # create README.md
    touch README.md

    # git init
    git init

    # git add, commit, push
    git remote add origin git@github.com:$USERNAME/$1.git
    git add .
    git commit -m "initial commit"
    git push -u origin master

    # launch vs code
    code .    
}