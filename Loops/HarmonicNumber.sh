#!/bin/bash -x
number=1
echo "Enter the range: "
read range

for (( i=2; i<=$range; i++ ))
do
#div=$(( 1/$i | bc ))
#number=`expr $number+$div | bc`
#number=$(( $number + $div ))
number=$(echo "scale=2; $number + 1/$i" | bc)
done
echo "The answer of harmonic number is: $number"


