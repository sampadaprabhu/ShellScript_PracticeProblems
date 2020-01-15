#!/bin/bash -x

echo  "Enter the day number(0 to 6): "
read number

#Calculating length
length=${#number}

if (( $length == 1 ))
then
	case $number in
	0)
	echo "Sunday"
	;;
   1)
   echo "Monday"
   ;;
   2)
   echo "Tuesday"
   ;;
   3)
   echo "Wednesday"
   ;;
   4)
   echo "Thursday"
   ;;
   5)
   echo "Friday"
   ;;
   6)
   echo "Saturday"
   ;;
esac
else
	echo "Enter proper number!!"
fi
