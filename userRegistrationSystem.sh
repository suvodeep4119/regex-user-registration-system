#!/bin/bash -x
#Author: suvodeep4119
echo "Welcome to REGEX USER REGISTRATION SYSTEM"

#Enable extended globbing
shopt -s extglob

#Our input
read -p "Enter first name: " firstName
read -p "Enter last name: " lastName
read -p "Enter email: " email
#To match
regexFirstName="^[A-Z]{1}[a-z]{2,}$"
regexLastName="^[A-Z]{1}[a-z]{2,}$"
regexEmail="^[a-z]{3,}[.]{1}[a-z]{3,}[@]{1}[a-z]{2,}[.]{1}[a-z]{2,}[.]{1}[a-z]{2}$"


if [[ $firstName =~ $regexFirstName ]]
then
	echo "Valid first name"
else
	echo "Invalid first name"
fi

if [[ $lastName =~ $regexLastName ]]
then
	echo "Valid last name"
else
	echo "Invalid last name"
fi

if [[ $email =~ $regexEmail ]]
then
	echo "Valid email"
else
	echo "Invalid email"
fi
