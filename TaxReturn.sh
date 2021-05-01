#!/bin/sh

# Name:Jerry Laplante
# Date: 04/23/2020
# Section: 0008
# Assignment: Unix Shell Tax Return
# Due Date: 04/24/2020
# About this project: This program tells the user if they need to file a tax return
# using unix shell scripting
# Assumptions: N/A
# All work below was performed by Jerry Laplante


echo "Welcome to the Tax Return Program!" #Welcome user

echo "Are you single?" #prompt for response

echo "Enter Y for yes or N for no..."

read answer #take user response

if [ "$answer" = "y" ] || [ "$answer" = "Y" ] #nested if statement logic to determine results

then 

	echo "Are you under 65 years of age?"

	echo "Enter Y for yes or N for no..."

	read answer


	if [ "$answer" = "y" ] || [ "$answer" = "Y" ] #nested if statement

	then

		echo "Is your gross income less than $ 8450?"

		echo "Enter Y for yes or N for no..."

		read answer 


		if [ "$answer" = "y" ] || [ "$answer" = "Y" ] #more ifs

		then

			echo "You do not have to an income tax return" #end of path

			exit 0 

		elif [ "$answer" = "n" ] || [ "$answer" = "N" ] #if third question is no

		then 

			echo "You have to file an income tax return" #end of path

			exit 0 

		else

			echo "Error: Invalid input. You must enter Y or N..." #input validating els

			echo "Please run program again"

			exit 1
	
		fi #end of third if

	elif [ "$answer" = "n" ] || [ "$answer" = "N" ] #if second question is no

	then
		echo "Is your gross income less than $ 9700?" #

		echo "Enter Y for yes or N for no..."

		read answer 

		if [ "$answer" = "y" ] || [ "$answer" = "Y" ] #more ifs

		then 

			echo "You do not have to file an income tax return" #end of path

			exit 0

		elif  [ "$answer" = "n" ] || [ "$answer" = "N" ]

		then 

			echo "You have to file an income tax return" #end of path

			exit 0

		else #input validating trailing else

			echo "Error: Invalid input. You must enter Y or N..."
 
			echo "Please run program again"
 
			exit 1

		fi #end of if


	else #input valadation

		echo "Error: Invalid input. You must enter Y or N..."
 
		echo "Please run program again"

		exit 1
 
	fi #end of if
 

elif [ "$answer" = "n" ] || [ "$answer" = "N" ] #no for first question 

then 

	echo "Sorry, this program is only for singles" #end of path

	echo "Goodbye"

	exit 0

else #input validating 

	echo "Error: Invalid input. You must enter Y or N..."

	echo "Please run program again"

	exit 1

fi #end of first if 

