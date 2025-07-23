#!/bin/sh

# You can direct data to go where you want with these commands.
#
# $ echo "message" > file       # 'message' is the only data in the file
#                                 if there is extra data, it is erased 
# $ echo "message" >> file      # 'message' is ADDED ONTO the end of
#                                 file with the previous data present
# $ command 2> file             # only direct message errors into file
# $ command 2>> file            # appends only error messages into file
# $ command > file 2>&1         # directs standard output (>) and error
#                                 messages (2>) into file
# $ command >> file 2>&1        # same as before but appends
#
# Let's say for whatever reason you want to add all the contents of the
# exercises/ folder and the license into one file. Fix the commands
# below

cat exercises >> 09_file
cat LICENSE > 09_file
