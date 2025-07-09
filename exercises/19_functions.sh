#!/bin/sh

# There are many times where you would need to repeat large sections of
# code. Or need to simplify the code for readability and organization.
# Functions would be use in this case, this is a simple example of how
# to use a function.
#
# $ greet() {
# $ 	name="$1"
# $ 	echo "Hello, $name."
# $ }
# $
# $ greet Alice		# Hello, Alice.
# $ greet Bob		# Hello, Bob.
#
# Pay attention to the syntax to use this function.
#
# Fix this program

display_entropy() {
	echo "Entropy available: $(cat /proc/sys/kernel/random/entropy_avail)"
	echo "Entropy pool size: $(cat /proc/sys/kernel/random/poolsize)"
	echo "Wakeup threshold: $(cat /proc/sys/kernel/random/write_wakeup_threshold)" 
	echo "Minimum reseeding in seconds: $(cat /proc/sys/kernel/random/urandom_min_reseed_secs)"
}

help() {
	echo "Usage: sh 19_functions.sh [OPTION]"
	echo "-en			displays the entropy information of your system"
	echo "-h, --help			displays this help message"
}

# Write a program where if something runs the program with the option
# '-de' at the end (sh 19_functions.sh -de) it would call the
# display_entropy function. Anything else written, would have the help
# function ran.

