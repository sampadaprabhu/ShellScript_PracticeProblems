#!/bin/bash
echo "How many element you want in array: "
read number
echo "Enter the elements in array: "
for (( i=0;i<$number;i++ ))
do
	read array[$i]
done
echo
#Displaying the array
echo "Elements of array are: "
for (( i=0;i<$number;i++ ))
do
printf "${array[$i]}"
done
echo "Enter the element you want to search: "
read search

for (( i=0;i<$number;i++ ))
do
	if (( ${array[$i]} == $search ))
	then
		echo "Number found!!"
	else
		echo "Number not found!!"
	fi
done

