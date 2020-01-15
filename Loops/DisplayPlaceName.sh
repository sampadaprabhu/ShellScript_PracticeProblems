#!/bin/bash -x

echo  "Enter the number: "
read number

#Calculating length
length=${#number}

	case $length in
	1)
	echo "Unit Place number"
	;;
   2)
   echo "Ten Place number"
   ;;
   3)
   echo "Hundred Placed number"
   ;;
   4)
   echo "Thousand Place number"
   ;;
   5)
   echo "Ten Thousand Place number"
   ;;
   *)
	echo "Number limit is exceed...we cannot help you!!"
   ;;
esac
