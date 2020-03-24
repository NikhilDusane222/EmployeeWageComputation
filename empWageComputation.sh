#!/bin/bash -x

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
