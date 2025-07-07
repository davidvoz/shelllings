#!/bin/sh

# The previous if-conditionals were string comparisons. We will now take
# a look into using number comparisons.
#
# -eq	# equal to
# -ne	# not equal to
# -gt	# greater than
# -ge 	# greater than or equal to
# -lt	# less than
# -le	# less than or equal to
#
# Also, when you input a number from the 'read' command, it 
# automatically becomes a integer. Shell cannot use float or doubles.
# To use decimal numbers, you must delegate it to other tools that will
# be taught much later
#
# $ read user_input
# $ if [ $1 -eq 1412 ]; then
# $		echo "Correct pin"
# $ fi
#
# You can also do operations but these must be surrounded by double
# parenthesis.
#
# $ $((10 + 2))		# 12 addition
# $ $((10 - 2))		# 8 subtraction
# $ $((10 * 2))		# 20 multiplication
# $ $((10 / 2))		# 5 division
# $ $((-10 % 3))	# -1 modulo, finds out the remainder
#
# Write a script that tells you if an inputted number is even or odd.

num=$1

	echo "odd"
	echo "even"
