#!/bin/bash -x

echo  "Enter the single digit number: "
read number

#Calculating length
length=${#number}

if (( $length == 1 ))
then
	case $number in
	0)
	echo "Given number is zero"
	;;
   1)
   echo "Given number is one"
   ;;
   2)
   echo "Given number is two"
   ;;
   3)
   echo "Given number is three"
   ;;
   4)
   echo "Given number is four"
   ;;
   5)
   echo "Given number is five"
   ;;
   6)
   echo "Given number is six"
   ;;
	7)
   echo "Given number is seven"
   ;;
   8)
   echo "Given number is eight"
   ;;
   9)
   echo "Given number is nine"
   ;;
esac
else
	echo "please enter single digit number!!"
fi


