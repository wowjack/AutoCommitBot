#!/bin/bash
cd /home/ubuntu/repos/AutoCommitBot

FILE=./test.txt
if test -f "$FILE"; then
    rm $FILE
else
    echo $RANDOM > test.txt
fi

R=echo $RANDOM | md5sum

git add -A
git commit -m "Stupid bot commit" 
git push
