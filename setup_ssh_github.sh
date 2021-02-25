#!/usr/bin/env bash

echo -n "Enter git user name > "
read UserName
echo -n "Enter git user email > "
read UserEmail

# generate ssh key without passphrase and add your ssh private key to the ssh-agent
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
eval "$(ssh-agent -s)"
ssh-add  ~/.ssh/id_rsa

# configure a user name and email to be associated with your Git commits
git --version
git config --global user.name $UserName
git config --global user.email $UserEmail

#show public ssh key - add into github account
cat ~/.ssh/id_rsa.pub