#!/bin/bash -x

echo "Enter the number in inch:"
read inch

echo "The value in feet is:$(( $inch/12 ))"
echo
echo "Enter the length and breadth of rectangle: "
read length breadth
area=$(( $length * $breadth ))
area_in_meter=`expr $area*0.3048*0.092 | bc`
echo "The area is in meter is: $area_in_meter"

acre=`expr $area_in_meter*25*0.00029 | bc`
echo "The value of rectangle in acre is : $acre"
