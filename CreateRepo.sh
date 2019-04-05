#!/bin/bash 

if [[ $# -ne '1' ]];then
printf "Please provide repo name \n"
exit
 fi

echo "# $1" >> README.md
git init
git add README.md
git commit -m "First commit for $1"
git remote add origin https://github.com/michaelcolletti/$1.git
git push -u origin master
