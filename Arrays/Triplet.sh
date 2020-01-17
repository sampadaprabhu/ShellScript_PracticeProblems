#!/bin/bash

array=(-1 -2 0 1 2 3)

length=${#array[@]}

for (( i=0;i<$(( length-2 ));i++ ))
do
	for (( j=$(( i+1 ));j<$((length-1));j++ ))
	do
		for (( k=$(( j+1 ));k<$length;k++ ))
		do
			if (( $(( ${array[$i]} + ${array[$j]} + ${array[$k]} )) == 0 ))
			then
				echo "${array[$i]}, ${array[$j]}, ${array[$k]}"
			fi
		done
	done
done
