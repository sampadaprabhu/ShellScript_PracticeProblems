#!/bin/bash
head=0
tail=0
chances=0
while (( 1  ))
do
	chances=$(( $chances + 1 ))
	number=$((RANDOM%2))
	if (( $number == 1 && $head<=11 ))
	then
		head=$(( $head + 1 ))
	elif (($number == 0 && $head<=11 ))
	then
		tail=$(( $tail + 1 ))
	fi
	if (( $head == 11 || $tail == 11 ))
	then
		break
	fi
done
echo "Total chances are: $chances"
echo "Total heads are: $head"
echo "Total tails are: $tail"
