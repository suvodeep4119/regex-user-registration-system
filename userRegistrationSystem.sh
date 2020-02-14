#!/bin/bash -x
#Author: suvodeep4119
echo "Welcome to REGEX USER REGISTRATION SYSTEM"

#Enable extended globbing
shopt -s extglob

#Our input
read -p "Enter first name: " userInput
#To match
regex="^[A-Z]{1}[a-z]{2,}$"

if [[ $userInput =~ $regex ]]
then
	echo "Valid"
else
	echo "Invalid"
fi

