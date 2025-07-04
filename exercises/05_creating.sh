#!/bin/sh

# To create a folder, use the touch command
#
# $ touch file
# $ touch file1 file2
#
# To create folder, use the make directory command
#
# $ mkdir folder
# $ mkdir folder1 folder2
#
# You can also create more folders at a single time
#
# $ mkdir -p dir1/dir2		# enables the parent option because without
#							 it you cannot create more than a layer deep
# $ touch dir1/dir2/file	# lets you touch a file deeper
#
# For your exercise, fix the code that is meant to create a folder that
# is at least 3 directories deep with a file named 'file'

mkdir
touch file

# do not remove the newly created folder just yet
