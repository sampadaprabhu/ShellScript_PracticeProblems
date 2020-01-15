#!/bin/bash
day()
{
	#day=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")
	y=$(( $year - $(( $(( 14 - $month )) / 12 )) ))
	x=$(( $y + $(( $y / 4 - $y / 100 + $y / 400 )) ))
	m=$(( $month + 12 * $(( $(( 14 - $month)) / 12)) - 2 ))
	d=$(( $(( $date + $x + 31 * $m / 12 )) % 7 ))
#echo "The day is : ${day[$d]}"
	if (( $d == 0 ))
then
	echo "The day is: Sunday"
	elif (( $d == 1 ))
	then
	echo "The day is: Monday"
 elif (( $d == 2 ))
   then
   echo "The day is: Tuesday"
 elif (( $d == 3 ))
   then
   echo "The day is: Wednesday"
 elif (( $d == 4 ))
   then
   echo "The day is: Thursday"
 elif (( $d == 5 ))
   then
   echo "The day is: Friday"
	else
		echo "The day is: Saturday"
fi
}


echo "Enter the date: "
read date
echo "Enter the month: "
read month
echo "Enter the year: "
read year

#Calling the function
day
