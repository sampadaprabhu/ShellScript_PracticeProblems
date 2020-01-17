
#!/bin/bash

echo "Enter three numbers to check largest number: "
read number1 number2 number3

if (( $number1 > $number2 || $number1 > $number3 ))
then
		echo "$number1 is largest number"
elif (( $number2 > $number1 || $number2 > $number3 ))
then
		echo "$number2 is largest number"
elif (( $number3 > $number1 || $number3 > $number2 ))
then
		echo "$number3 is largest number"
else
		echo "Numbers are not distinct!!"
fi
