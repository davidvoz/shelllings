#!/bin/sh

# A while loop is a way to run a command over and over again while a 
# condition is true. The condition can be an evaluation or simply the
# word 'true'. Take these examples
#
# $ i=10
# $ while [ "$i" -ge 1 ]; do
# $ 	echo "$i"
# $ 	i=$((i - 1))
# $ done
#
# The snippet above lists out all the integers from 10 until i equals
# 0. You can also use 'break' to stop that while loop
#
# $ evil_number=36
# $ count=1
# $ while true; do
# $ 	[ ! $count -eq $evil_number ] && echo "Not evil number"
# $ 	[ $count -eq $evil_number ] && break
# $ done
# $ echo "Evil number found"
#
# For your challenge, complete this game for the user. Do not change
# the correct number.

magic_number=2987133075769857928
echo "I'm thinking of a number between 1 and four hundred quintillion."

while True;
	printf "Take a guess: "
	read user_input
	[ $magic_number -eq $user_input ] && break
	echo "Nope, wrong."

echo "Got it, cheater"
