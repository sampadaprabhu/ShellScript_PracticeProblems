#!/bin/bash
echo "Enter the word: "
read word
length=${#word}
for (( i=$length; i>=0; i-- ))
do
printf "${word:$i:1}"
done
echo


