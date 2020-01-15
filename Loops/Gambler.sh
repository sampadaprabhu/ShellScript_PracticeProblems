#!/bin/bash -x
Stake=100
Goal=200
bets=0
wins=0
loss=0
cash=$Stake

while (( $cash>0 || $cash==$Goal ))
do
	bets=$(( $bets+1 ))
	random=$((RANDOM%2))
	if (( $random==1 ))
	then
		cash=$(( $cash+1 ))
	elif (( $random==0 ))
	then
		cash=$(( $cash-1 ))
	fi
	if (( $cash==$Goal ))
	then
		wins=$(( $wins+1 ))
	elif (( $cash==0 ))
		then
		loss=$(( $loss+1 ))
	fi

done
echo "TOtal no. of trials are: $bets"

