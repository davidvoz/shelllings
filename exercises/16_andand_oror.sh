#!/bin/sh

# We used the if/else case but that is often not needed in shell. We can
# instead use && and || for many cases. Take a look at the snippet below
#
# $ sh foo.sh && sh bar.sh
#
# The snippet above means that if 'sh foo.sh' is ran successfully,
# without error, then 'sh bas.sh' will be ran.
#
# $ sh foo.sh || sh bar.sh
#
# If 'sh foo.sh' is ran and an error does occur, then 'sh bar.sh' is
# ran.
#
# Some conditions require square brackets, these are test expressions.
# Examples of conditions that require square brackets are usually string
# and string comparisons, existence of files, and empty or not files.
#
# $ mv file1 file2 || echo "Could not be moved"
# $ [ -z "$1" ] || echo "Nothing was entered"
#
# You can also extend it
#
# $ [ "$1" = "password123" ] || { echo "power off"; sh shutdown.sh; }
#
# The semi colon is used the same way as other programming languages
# where you can combine multiple lines into a single line. Note that
# it should still be easily readable to humans to debug and understand.
#
# Fix the code below so the echo commands make sense with the pin 1412

[ $1 -eq 1412 ] || {
	echo "correct pin"
} && {
	echo "incorrect pin"
}
