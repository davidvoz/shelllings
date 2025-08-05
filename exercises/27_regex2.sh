#!/bin/sh

# Continuing off of regex
#
# []   matches with any one character from inside the brackets
# [^]  matches with any that are not in the brackets
#
# ()   groups parts of a pattern
#
# {}   repeats what was shown before a certain amount of times
# [a-zA-Z]{2,}       All alphabet characters (lower and uppercase) 
#                    should be used 2 or more times
# [a-zA-Z0-9]{5,15}  All characters in square brackets should be used 
#                    a min of 5 times and max of 15
#
# ``   same as $(...), but $() is preferred
# \    backslash for the literal character
#

# We will verify valid email addresses below. We will keep it simple to
# addresses with one word beginnings with numbers and letters, @, 
# and a website domain.
# billybob@bob1.com, David2@test.xyz, etc

verify() {
	# don't forget the + symbol in some of these regex

	# verify that the beginning has valid characters
	echo "$1" | grep -Eq '^[a-zA-Z0-9]+' || exit 1

	# verify that an @ symbol and a second level domain is present with
	# only letters and numbers
	echo "$1" | grep -Eq '@[a-zA-Z]+' || exit 1

	# verify a dot is present
	echo "$1" | grep -Eq '\.' || exit 1

	# verify the ending is a top level domain with 2 or more lowercase
	# characters
	echo "$1" | grep -Eq '[a-z]{2,}$' || exit 1
}

verify $1
exit 0
