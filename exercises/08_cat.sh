#!/bin/sh

# We briefly mentioned the cat command earlier. It prints out all the
# data of a file into the terminal. And like the animal, 2 more commands
# are used. Head to print out the first lines of a file and tail to
# print out the last lines of a file.
#
# $ cat file		# prints out the entiretly of a file
# $ head file		# prints out the first 10 lines of a file
# $ tail file		# prints out the last 10 lines of a file
# $ head -n 1		# prints out only the first line of a file
# $ tail -n 18		# prints out only the last 18 lines of a file
# 
# Fix the command below to do a word count on the last 50 lines of the
# LICENSE file in this repository. Don't change the new file name.

head 50 LICENSE > 08_cat # the '>' sign is discussed later. For now
#                          know that the command should be outputting
#                          the last 50 lines into a file called 08_cat
wc -l 08_cat
