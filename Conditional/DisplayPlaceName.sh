#!/bin/bash -x
echo "Enter the number"
read number
length=${#number}
if (( $length == 1 ))
	then
	echo "It's a unit place number"
elif (( $length == 2 ))
	then
	echo "It's a ten place number"
elif (( $length == 3 ))
	then
	echo "It's a hundred place number"
elif (( $length == 4 ))
	then
	echo "It's a thousand place number"
elif (( $length == 5 ))
	then
	echo "It's a ten thousand place number"
else
	echo "Sorry...It's a exceed number..We can't help you!!"
fi
