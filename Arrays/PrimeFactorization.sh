#!/bin/bash -x
echo "Enter Number to Compute Prime factors"
read number

for((i=2;i<=number;i++))
do
	for((;number%i==0;number=number/i))
	do
		primeFactor[$i]=$i
	done
done
if [ $number -gt 2 ]
	then
		primeFactor[$i]=$number
fi
echo "${primeFactor[@]}"
