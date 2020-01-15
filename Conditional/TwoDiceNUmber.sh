#!/bin/bash
dice1=$(( RANDOM%6 + 1 ))
dice2=$(( RANDOM%6 + 2 ))

echo "The value of first dice is: $dice1"
echo "The value of second dice is: $dice2"
#Displaying the sum of two dice number
echo "The addition of two dice number is: $(( $dice1 + $dice2 ))"
