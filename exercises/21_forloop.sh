#!/bin/sh

# For loops follow a logic where it does an operation for every instance
#
# $ for var in list; do
# $ 	operation
# $ done
#
# From the semi-colon used, you can see that the snippet above can be
# 4 lines long, but it is generally condensed using the semi-colon.
#
# Let's say you want to wipe the metadata from a set of photos in a 
# folder you are in, it follows
#
# $ for pic in *.jpg; do
# $ 	exiftool -all= "$pic"
# $ done
#
# Fix the program below. If you mess up the test/ folder, you can git
# clone the project and move it in. Hopefully the annoyance will cause
# you to be more careful when running these commands.
#
# You want to add a line at the very end of every file, but you also
# want to delete it. Don't worry about deleting the '# bloat message'
# from the tests/ folder, as the program should delete all lines like
# that

for file in tests/*; do
	echo "# bloat message" >> "$test_file"
done

for file in tests/*; do
	tail -n -1 "$test_file" > "$test_file".tmp
	mv -f "$test_file".tmp "$test_file" # this line is valid
done
