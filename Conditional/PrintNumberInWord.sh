#!/bin/bash

echo "Enter the single digit number: "
read number

length=${#number}
if (( $length == 1 ))
then
if (( $number == 0 ))
then
	echo "Given number is: Zero"
elif (( $number == 1 ))
then 
   echo "Given number is: One"
elif (( $number == 2 ))
then 
   echo "Given number is: Two"
elif (( $number == 3 ))
then 
   echo "Given number is: Three"
elif (( $number == 4 ))
then 
   echo "Given number is: Four"
elif (( $number == 5 ))
then 
   echo "Given number is: Five"
elif (( $number == 6 ))
then 
   echo "Given number is: Six"
elif (( $number == 7 ))
then 
   echo "Given number is: Seven"
elif (( $number == 8 ))
then 
   echo "Given number is: Eight"
else
   echo "Given number is: Nine"
fi

else
	echo "plz enter single digit number!!"
fi
