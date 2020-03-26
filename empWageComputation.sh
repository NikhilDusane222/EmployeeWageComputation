#!/bin/bash -x

PART_TIME_EMPLOYEE=4
FULL_TIME_EMPLOYEE=8
WAGE_PER_HOURS=20
FULL_DAY_HOURS=8

employeetype=0
daysEmployeeWorkedInMonth=20
WorkingHoursForMonth=100
workingHoursForDay=0
day=0
MONTHLY_WORKING_DAYS=20
MONTHLY_WORKING_HOURS=100
employeeMonthlyWage=0
workingHoursForMonth=0

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

while [[ $daysEmployeeWorkedInMonth -lt $MONTHLY_WORKING_DAYS ]] && [[ $workingHoursForMonth -lt $MONTHLY_WORKING_HOURS ]]
do
	EmployeePresent=$( employeeAttendance )
	if [ $ EmployeePresent -eq 1 ]
	then
		employeeWorkingTime=$( employeeType )
		WorkinghoursforDay=$( WorkinghoursforDay $workHours )
		wageforDay=$( DailyemployeeWage $WAGE_PER_HOUR $WorkinghoursforDay )
		(( daysEmployeeWorkedInMonth++ ))
		workingHoursForMonth=$(( $workingHoursForMonth+$workHours ))
	else
		wageforDay=0
	fi
	dailyWage[$days]=$wageforDay
	(( days++ ))
	employeeMonthlyWage=$(( $employeeMonthlyWage+$wageforADay ))
done

for var in ${!dailyWage[@]}
do
	echo "Day "$var : ${dailyWage[$var]}
done
printf "Employee Wage for the month : $employeeMonthlyWage \n"
