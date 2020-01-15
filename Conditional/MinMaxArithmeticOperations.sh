#!/bin/bash
echo "Enter the three numbers: "
read number1 number2 number3

#Arithmetic Operations
answer1=$(( $number1 + $number2 * $number3 ))
answer2=$(( $number3 + $number1 / $number2 ))
answer3=$(( $number1 % $number2 + $number3 ))
answer4=$(( $number1 * $number2 + $number3 ))

minimum_value=answer1
maximum_value=answer1

if (( $answer1 > $answer2 ))
then
	minimum_value=$answer2
	maximum_value=$answer1
else
	minimum_value=$answer1
   maximum_value=$answer2
fi

if (( $answer3 > $maximum_value ))
then
	minimum_value=$maximum_value
	maximum_value=$answer3
elif (( $answer3 > $minimum_value && $answer3!=$maximum_value ))
then
	minimum_value=$answer3
elif (( $answer4 > $maximum_value ))
then
   minimum_value=$maximum_value
   maximum_value=$answer4
elif (( $answer4 > $minimum_value && $answer4!=$maximum_value ))
then
   minimum_value=$answer4
fi
echo "Maximum Value is: $maximum_value"
echo "Minimum Value is: $minimum_value"

