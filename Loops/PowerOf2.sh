#!/bin/bash -x

echo "Enter the range: "
read range

for (( i=0; i<=$range; i++ ))
do
number=`expr 2^$i | bc`
echo "2^$i=$number"
done
