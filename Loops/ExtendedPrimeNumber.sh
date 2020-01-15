#!/bin/bash
echo "Enter the range to findout the prime numbers: "
read range
for (( i=2; i<range; i++ ))
do
	flag=0
	for (( j=2; j<range; j++ ))
	do
		if (( $i % 2 == 0 ))
		then
			#echo "$j is not prime number"
			flag=1
			break
		fi
		done
		if (( $flag == 0 ))
			then 
				echo "$i is prime number"
		else
				echo "$i is not  prime number"
		fi
done
