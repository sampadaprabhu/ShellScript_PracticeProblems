#!/bin/bash

random=$(( RANDOM % 2 ))
if(( $random == 1 ))
then
	echo "Head"
else
	echo "Tail"
fi
