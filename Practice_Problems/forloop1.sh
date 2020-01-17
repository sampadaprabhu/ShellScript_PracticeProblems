#!/bin/bash
isPartTime=1
isFullTime=2
empRatePerHr=20
NoOfWorkingDays=20
for (( day=1; day<=$NoOfWorkingDays; day++ ))
do

empCheck=$((RANDOM%3))
case $empCheck in
	isFullTime)
	empHrs=8
	;;
	isPartTime)
	empHrs=4
	;;
	*)
	echo "Not part time or full time employee!!"
esac
salary=$(( $empHrs * $empRatePerHr))
echo $salary
done
