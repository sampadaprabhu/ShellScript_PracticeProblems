#!/bin/bash

echo "Enter the number: "
read number
echo "Enter 1 for Feet to Inch Conversion"
echo "Enter 2 for Inch to Feet Conversion"
echo "Enter 3 for Feet to Meter Conversion"
echo "Enter 4 for Meter to Feet Conversion"

read choice

case $choice in
	1)
	result=`expr $number*12 | bc`
	echo $result
	;;
  2)
   result=`expr $number/12 | bc`
   echo $result
   ;;
  3)
   result=`expr $number*0.3048 | bc`
   echo $result
   ;;
  4)
   result=`expr $number/0.3048 | bc`
   echo $result
   ;;
	*)
	echo "Enter proper choice!!"
esac
