#!/bin/bash
cd /home/ubuntu/repos/AutoCommitBot

FILE=./test.txt
if test -f "$FILE"; then
    rm $FILE
else
    echo hello > test.txt
fi

git add -A > add.txt
git commit -m "Stupid bot commit" > commit.txt
git push > push.txt