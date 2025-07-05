#!/bin/sh

# You can copy files and move them from one location to another. When
# you "move" a file, you are changing its location. When you copy a
# file, within the same filesystem, this is just renaming the file path.
# When you copy a file, you create a new, separate copy of the file's
# contents in another location.
#
# $ cp file1 file2			# this copies the contents, permissions,
# 							  and metadata
# $ cp file dir/			# copies the file into a directory
#
# $ mv file /to/new/path/	# moves the file to a new location
# $ mv old_name new_name
#
# Often if you really don't want the metadata, and just want to have
# the contents copied, you can use the cat command
#
# $ cat file_withmetadata > new_file
#
# Fix this program that is built off from the previous exercise
printf "Enter your sentence: "
read user_input
echo "$user_input" > 11_file
cp 11_file
mv
