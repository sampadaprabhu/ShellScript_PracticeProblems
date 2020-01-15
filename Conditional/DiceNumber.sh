#!/bin/bash -x

random_number=$(( RANDOM%6 + 1 ))
echo "The dice number is: $random_number"
