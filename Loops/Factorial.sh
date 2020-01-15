#!/bin/bash -x
echo "Enter the number: "
read number
factorial=1
for (( i=$number; i>=1; i-- ))
do
factorial=$(( $factorial * $i ))
done
echo "Factorial of $number is: $factorial"
