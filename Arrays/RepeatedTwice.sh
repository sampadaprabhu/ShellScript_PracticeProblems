#!/bin/bash

for (( i=0;i<100;i++ ))
do
if (( $i <10 ))
then
	continue
else
	var=$i
	number=$(( $var % 10 ))
	var=$(( var/10 ))
	if (( $number == $var ))
		then
			array[$i]=$i
	fi
fi
done
echo "${array[@]}"
