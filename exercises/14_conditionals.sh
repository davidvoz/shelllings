#!/bin/sh

# As with other programming languages, we can evaluate if conditions or
# statements are true or false. In this exercise we will be dealing with
# strings and basic if/else structure. Below are 3 examples of this.
#
# $ option="yes"
# $ if [ "$option" = "yes" ]; then
# $		echo "option enabled"
# $ fi
#
# $ password="shellling123"
# $ if [ "$name" = "shellling123" ]; then
# $		echo "access granted"
# $ else
# $		echo "access denied"
# $ fi
#
# $ printf "Enter name: "
# $ read name
# $ if [ "$name" = "shellling" ]; then
# $		echo "Welcome!"
# $ elif [ "$name" = "shelllings" ]; then
# $		echo "Welcome all!"
# $ else
# $		echo "You are not welcome here."
# $ fi
#
# Notice that there is spaces between the square brackets and that, for
# strings, there are quotation marks around the variables. There are
# more options than just '='
#
# =     # strict string comparison of equals
# !=    # strict string comparison of does not equal
# -z    # checks if string is empty
# -n    # checks if string is not empty
# 
# Fix the incomplete script below, leave all the echo lines unchanged

if # check if user input is or is not empty here
	if [ "$1" = "password123" ] then
		echo "Welcome"
	else
		echo "Access not granted"
else
	echo "Password not entered"
