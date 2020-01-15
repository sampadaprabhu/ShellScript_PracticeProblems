#!/bin/bash

echo "Enter the year: "
read year
length=${#year}
if (( $length == 4 ))
then
if (( $year % 4 == 0 || $year % 100 == 0 || $year % 400 == 0 ))
then
	echo "$year is a leap year!!"
else
	echo "$year is not leap year!!"
fi
else
echo "Enter proper year!!"
fi
