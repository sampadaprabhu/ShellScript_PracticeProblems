#!/bin/bash -x

#Taking 5 random values using random function and calculate sum and average
sum=0
echo "Enter the range: "
read range
for (( i=1; i<range; i++ ))
do
	random_number=$(($RANDOM % 100 ))
	sum=$(( $sum + $random_number ))
done
echo "The sum of 5 random values is: $sum"

average=$(( $sum / $range ))
echo "And the Average value is: $average"
