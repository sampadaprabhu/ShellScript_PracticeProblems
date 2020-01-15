#!/bin/bash

echo "Enter the range: "

read range

for (( i=1; i<=range; i++))
do
	arr[$i]=$(( RANDOM % 1000 ))
done
minimum_value=0
maximum_value=0
 for (( i=0; i<=range; i++ ))
	do
	for(( j=$(( i + 1 )); j<=range; j++ ))
	do
		if (( ${arr[$j]} > ${arr[$((j + 1 ))]} ))
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$(( j + 1 ))]}
			arr[$(( j + 1 ))]=$temp
		fi
	done
done
echo "Sorted array is: "
echo ${arr[*]}

echo "The minimum value is: ${arr[1]}"
echo "The maximum value is: ${arr[$range]}"
