#!/bin/sh

# Regular expression (regex) is also pattern searching through file 
# names but also through text or any string.
#
# .    matches any single character except newline.
# $ ls tests/ | grep 2.     # if you want to see it tested
#
#
# ^    matches the start of a line
# $ grep ^"Long, long" file    # same as below
# $ grep "^Long, long" file
#
#
# $    matches the end of a line
# $ grep end$ file
#
# [-]    gives a range within the brackets, a-z A-Z 0-9 can be used
# $ ls 1[0-6]*    # an easier way of completing the previous
#                 # exercise without globbing
#
# +    matches one or more of the previous character
# $ ls tests/ | grep -E 'o+'    # for regex expressions like this you
#                               # may have to have the -E option
#
# ?    matches zero or more of the previous character
# $ ls tests/ | grep -E 'o+*'   # not a helpful example
#
# You want to verify if someone has inputted a valid file from tests/ 
# Your job is to match the file to a file if the user either inputs a 
# number associated with that file, or the name between the number and
# file extension. Meaning inputs with .sh should return an error.

verify() {
	# duplicate more or remove lines below if needed
	ls tests/ | grep -E  && exit 0
	ls tests/ | grep -E  && exit 0
}

verify $1
exit 1
