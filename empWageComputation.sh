#!/bin/bash -x

#Constants
PART_TIME_EMPLOYEE=4
FULL_TIME_EMPLOYEE=8
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8

#Declare dictionary
declare -A dailywage
printf "Welcome to Employee Wage Computation Program \n"

#Employee attendance function
function employeeAttendance() {
	Number=$(( RANDOM%2 ))
	if [ $Number -eq 1 ]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi
}

#Call employee attendance function
employeeAttendance

#Employee daily wage function 
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

