#!/bin/bash
cd /home/ubuntu/repos/AutoCommitBot

FILE=./test.txt
if test -f "$FILE"; then
    rm $FILE
else
    echo hello > test.txt
fi

git add -A
git commit -m "Stupid bot commit" 
git push