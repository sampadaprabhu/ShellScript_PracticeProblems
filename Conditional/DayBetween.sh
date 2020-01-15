#!/bin/bash -x
March_Month=3
June_Month=6
DATE=20
echo "Enter the date: "
read date
echo "Enter the month: "
read month

if (( $date < $DATE && $month < $March_Month ))
then
	echo "False!!"
elif (( $date > $DATE && $month > $June_Month ))
then
	echo "False!!"
else
	echo "True!!"
fi
