#!/bin/sh

# In the folder you are in, you can list the folder contents by typing
# 'ls' and seeing what is there. Some shell configs will have the 
# folders bold and different colored to help with navigation.
# 
# $ ls      # lists contents
# $ ls -a   # lists hidden contents as well as unhidden
# $ ls -A   # same as -a but without . and ..
#             Also, not entirely POSIX compliant but many modern shells
#             run it fine
# $ ls -l   # shows linkages in files, like how we did with 
#             ls -l /bin/sh
# $ ls -R   # recursively goes into folders listing contents out
# $ ls -AR  # separate arguments can be combined to execute both
#
# For your exercise, a random file will be created and hidden. Find
# the file and delete it.

rm file_name # rm means to remove, do not change that part
