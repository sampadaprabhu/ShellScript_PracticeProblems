#!/bin/bash
echo "Enter the number of rows: "
read rows
echo "Enter the number of columns: "
read columns

echo "Enter the elements of Matrix A: "
for (( i=1;i<=$rows;i++ ))
do
	for (( j=1;j<=$columns;j++ ))
	do
		#echo -n "enter the elements ($i,$j)"
		read array1[$i$j]
	done
done
echo "Elements of Matrix A: "
for (( i=1;i<=$rows;i++ ))
do
	for (( j=1;j<=columns;j++ ))
	do
		printf "${array1[$i$j]} "
	done
echo
done
echo "Enter the elements of Matrix B: "
for (( i=1;i<=rows;i++ ))
do
	for (( j=1;j<=columns;j++ ))
	do
		#echo -n "enter the element ($i,$j)"
		read array2[$i$j]
	done
done
echo "Elements of Matrix B: "
for (( i=1;i<=$rows;i++ ))
do
	for(( j=1;j<=$columns;j++ ))
	do
		printf "${array2[$i$j]} "
	done
echo
done
#echo "****ADDITION OF MATRICES****"
for (( i=1;i<=$rows;i++ ))
do
	for (( j=1;j<=$columns;j++ ))
	do
		array3[$i$j]=$(( $(( array1[$i$j] + array2[$i$j] )) ))
	done
done
echo "After addition Matrix is: "
for (( i=1;i<=$rows;i++ ))
do
	for (( j=1;j<=$columns;j++ ))
	do
		printf "${array3[$i$j]} "
	done
echo
done

