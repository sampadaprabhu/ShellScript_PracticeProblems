#!/bin/bash -x
echo "enter the three numbers:"
read number1 number2 number3

answer1=$(( $number1 + $number2 * $number3 ))
echo "The output of first expression is: $answer1"

answer2=$(( $number3 + $number1 / $number2 ))
echo "The output of second expression is: $answer2"

answer3=$(( $number1 % $number2 + $number3 ))
echo "The output of third expression is: $answer3"

answer4=$(( $number1 * $number2 + $number3 ))
echo "The output of fourth expression is: $answer4"

