#!/bin/bash

email=$1
password=$2
gist=$3
# Delete .git 
rm -rf .git &&

# get current date
commit=$(TZ='Asia/Calcutta' date '+%D %I:%M %p')

## configs
git config --global user.email $email
git config --global user.name iamrony777
git config --global user.password $password
git config --global credential.helper store
wget "$gist"
mv .git-credentials ~/.git-credentials

# Commit "Initial Commit"
git init
git branch -m main
git add .
git commit -m "Last Push on : $commit" && 

# Push
git remote add origin https://github.com/iamrony777/iamrony777.git &&
git push -u --force origin main