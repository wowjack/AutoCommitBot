#!/bin/bash
cd /home/ubuntu/repos/AutoCommitBot

LOOPS=$(echo $(($RANDOM%5)))
echo "Num commits: $(($LOOPS+1))" > log.txt
for var in $(seq $(($LOOPS+1)))
do
    echo -e "$(date)\t$(echo $RANDOM | md5sum)" >> log.txt
    echo "Commiting"
    git add -A
    git commit -m $RANDOM
    git push
    sleep 10
done
