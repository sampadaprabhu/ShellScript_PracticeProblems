#!/bin/bash
declare -A birthMonth
month=("JAN" "FEB" "MAR" "APR" "MAY" "JUN" "JUL" "AUG" "SEP" "OCT" "NOV" "DEC")
for (( i=0;i<50;i++ ))
do
	random=$((RANDOM%12))
	birthMonth[$i]=$random
done
echo "${!birthMonth[@]}"
#echo "${birthMonth[@]}"

for (( i=0;i<${#month[@]};i++ ))
do
	 echo "***${month[$i]}***"
	for (( j=0;j<${#birthMonth[@]};j++ ))
	do
		if (( ${birthMonth[$j]} == $i ))
		then
			echo "Person $j"
		fi
	done
done

