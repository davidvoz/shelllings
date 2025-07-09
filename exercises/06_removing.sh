#!/bin/sh

# The previous exercises have created a mess in this folder. We can 
# clean it up using the 'rm' command.
#
# $ rm file         # removes file
# $ rm file1 file2  # removes files
# $ rm -r dir/      # recursively removes files and folders
# $ rm -rf dir/     # forces the previous command
# $ rm *            # removes all the files within the current folder,
#                     saves time on not having to input every file
# $ rmdir dir/      # removes an empty directory
#
# The astrisk is a very important symbol in shell programming. Take the
# example below
#
# $ rm folder/*.txt
#
# This command will rm all the files within folder/ that end with .txt
# meaning anyfile that ends with .c, .sh, or has no dot endings will 
# not be deleted.
#
# $ rm a*z
#
# The above command will remove any combination of files that start with
# 'a' and end with 'z'. Including files directly named 'az' with nothing
# inbetween.
#
# For your next exercise, remove the custom folder you created earlier
# using the commands above directly in the terminal. An extra folder
# will be created and try to remove everything in the most efficient
# way possible when typing. Don't change anything in the code snippet
# below
rm -rf 06_folder
mkdir 06_folder
for i in $(seq 1 100); do
	touch 06_folder/file$i
done

# in one line below, find a way to delete all the 100 files created 	
# from above without deleting the folder. Test out different ways, 
# maybe combine arguments to accomplish this. Do not add more or
# less than 44 lines of code in this file.

