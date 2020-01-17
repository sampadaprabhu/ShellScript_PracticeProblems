#!/bin/bash

echo "Enter the number: "
read number
num=$number
rnum=0
until [ $num -le 0 ]
do
	i=$(( $num % 10 ))
	rnum=$(($rnum * 10 ))
	rnum=$(( $rnum + $i ))
	num=$(( $num / 10 ))
done
if (( $number == $rnum ))
then
		echo "$number is palindrome"
else
		echo "$number is not palindrome"
fi
