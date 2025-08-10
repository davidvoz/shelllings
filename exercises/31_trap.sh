#!/bin/sh

# 'trap' is a very useful tool that I've been using on the exercises
# where I said you didn't have to worry about deleting the created file.
#
# $ trap command SIGNAL
#
# For example, in your tests/ files, many will have trap statements
#
# $ cleanup() {
# $     [ -f "file" ] && rm file
# $ }
# $ trap cleanup EXIT
#
# exit is the signal for trap to call cleanup(). Below are the different
# signals that trap detects
#
# $ trap command EXIT     # catches both exit 1 and exit 0
# $ trap command INT      # catches ctrl+c kills
# $ trap command TERM     # catches a signal terminate, like 'kill'
# $ trap command INT EXIT # catches different instances
#
# You don't have to call functions when running trap, you can run 
# commands in the same line
#
# $ trap 'echo "Exiting.."; exit' TERM
#
# Below is a simple creation of a file, write a trap line that prints
# out "Removing..." and removes the file

touch file.txt
echo "kill me" > file.txt
