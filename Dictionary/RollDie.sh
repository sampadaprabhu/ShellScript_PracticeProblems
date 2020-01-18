#!/bin/bash -x

declare -A rollDie
while (( 1 ))
do
	random=$((RANDOM%6))

	if (( ${rollDie[0]} == 10 || ${rollDie[1]} == 10 || ${rollDie[2]} == 10 || ${rollDie[3]} == 10 || ${rollDie[4]} == 10 || ${rollDie[5]} == 10 ))
	then
		break
	else
		rollDie[$random]=$(( ${rollDie[$random]} + 1 ))
	fi
done
echo "${!rollDie[@]}"
echo "${rollDie[@]}"

value=${rollDie[0]}
for (( i=0;i<6;i++ ))
do
if (( ${rollDie[$i]} > $value ))
then
	value=${rollDie[$i]}
	maximum=$(( i+1 ))
fi
done
value=${rollDie[0]}
for (( i=0;i<6;i++ ))
do
if (( ${rollDie[$i]} < $value ))
then
   value=${rollDie[$i]}
   minimum=$(( i+1 ))
fi
done
echo "Maximum: $maximum"
echo "Minimum: $minimum"

