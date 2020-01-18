#!/bin/bash
declare -A dictionary

dictionary["key1"]="sampada"
dictionary["key2"]="hanumant"
dictionary["key3"]="pranita"

echo "***Displaying value by key***"
echo "${dictionary[key1]}"
echo "${dictionary[key2]}"
echo "${dictionary[key3]}"
echo
echo "***Displaying key and value using for loop***"
for key in ${!dictionary[@]}
do
echo "$key=${dictionary[$key]}"
done
echo
echo "***Displaying value using for loop***"
for value in ${dictionary[@]}
do
echo "$value"
done
