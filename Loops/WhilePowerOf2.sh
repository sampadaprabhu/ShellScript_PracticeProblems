#!/bin/bash -x

echo "Enter the range: "
read range
i=0
while (( $i <= $range))
do

number=`expr 2^$i | bc`
if (( $number <= 256 ))
then
echo "2^$i=$number"
else
break
fi
i=$(( $i + 1 ))
done
