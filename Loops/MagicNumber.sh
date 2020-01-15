#!/bin/bash -x
#echo "Enter the number: "
#read number
low=0
high=100
answer=0
while (( $answer!=2 ))
do
		mid=$(( $(( $low + $high ))/2 ))
		echo "$mid is your number? "
		echo "enter 0 for less than or 1 for greater than..otherwise 2"
		read answer
		if (( $answer==0 ))
		then
		high=$mid
		elif (( $answer==1 ))
		then
		low=$(( $mid+1 ))
		elif (( $answer==2 ))
		then
			echo "YOur number is: $mid"
			break
		fi
done
