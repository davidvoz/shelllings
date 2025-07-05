#!/bin/sh

# We can go on ahead and read user input easily
#
# $ echo "Enter your name below"
# $ read user_input
# $ echo "$user_input"
#
# Unfortunately echo will take the user input into a new line. To avoid
# that you can use printf (like in C) or, less posix compliant, use
# 'echo -n' to avoid that new line
#
# $ printf "Enter your name: " 		# equivalent as the next line
# $ echo -n "Enter your name: "
#
# Fix this program that is meant to input the user's input into a file

printf "Enter your sentence: "
read user_input > 11_file
