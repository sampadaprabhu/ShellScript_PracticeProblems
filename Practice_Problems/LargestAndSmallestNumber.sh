#!/bin/bash

for (( i=0;i<10;i++ ))
do
	array[$i]=$((RANDOM%1000))
done
largest=0
smallest=0
second_largest=0
second_smallest=0

if (( ${array[0]} > ${array[1]} ))
then
	largest=${array[0]}
	second_largest=${array[1]}
else
	second_largest=${array[0]}
	largest=${array[1]}
fi
for (( i=2;i<10;i++ ))
do
	if (( ${array[$i]} > $largest ))
	then
		second_largest=$largest
		largest=${array[$i]}
	elif (( ${array[$i]} > $second_largest && ${array[$i]} != $largest ))
	then
		second_largest=${array[$i]}
	fi
done
if (( ${array[0]} < ${array[1]} ))
then
	smallest=${array[0]}
	second_smallest=${array[1]}
else
	second_smallest=${array[0]}
	smallest=${array[1]}
fi
for (( i=2;i<10;i++ ))
do
	if (( ${array[$i]} < $smallest ))
	then
		second_smallest=$smallest
		smallest=${array[$i]}
	elif (( ${array[$i]} < $second_smallest && ${array[$i]} != $smallest ))
	then
		second_smallest=${array[$i]}
	fi
done
echo "${array[@]}"
echo "largest number is: $largest"
echo "smallest number is: $smallest"
