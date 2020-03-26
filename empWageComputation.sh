#!/bin/bash -x

PART_TIME_EMPLOYEE=4
FULL_TIME_EMPLOYEE=8
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8

declare -A dailywage
printf "Welcome to Employee Wage Computation Program \n"

function employeeAttendance() {
	Number=$(( RANDOM%2 ))
	if [ $Number -eq 1 ]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi
}

employeeAttendance

function DailyEmployeeWage()
{
	echo “$(( $WAGE_PER_HOURS * $FULL_DAY_HOURS ))”
}

#Employee type function
function employeeType(){
	employeeType=$(($RANDOM%2))
	if [ $employeeType -eq 8 ]
	then
		Workhours=$employeeType
		printf "Full time Employee \n"
	else
		Workhours=$employeeType
		printf "Part time Employee \n"
	fi
	printf "$Workhours \n"
}

printf "1. Full time employee \n" num
printf "2. Part time employee \n" num
read -p "Choose employee time: " num

#Use case statement  in function
function WorkinghoursforDay()
{
case $num in
	1)
		workHours=$FULL_TIME_EMPLOYEE
		printf "workHours \n"
		;;
	2)
		workHours=$PART_TIME_EMPLOYEE
		printf "workHours \n"
		;;
	*)
		printf "Invalid choice"
	esac

	if [[ $(( $MONTHLY_MAX_WORKING_HOURS-$workingHoursForMonth )) -lt $FULL_DAY_HOUR ]]
	then
		workHours=$PART_TIME_HOUR
	fi
	printf "$workHours \n"
}
