#!/bin/bash -x
echo "Enter day number(between 0 to 6): "
read day
length=${#day}
if (( $length == 1 ))
then

if (( $day == 0 ))
then
echo "The day is: Sunday"
elif (( $day == 1 ))
 then
 echo "The day is: Monday"
elif (( $day == 2 ))
  then
   echo "The day is: Tuesday"
 elif (( $day == 3 ))
   then
   echo "The day is: Wednesday"
 elif (( $day == 4 ))
   then
   echo "The day is: Thursday"
 elif (( $day == 5 ))
   then
   echo "The day is: Friday"
	else
		echo "The day is: Saturday"
fi
else
echo "Enter proper day number!!"
fi
