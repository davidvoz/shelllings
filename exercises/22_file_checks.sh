#!/bin/sh

# When writing scripts and into files, there are times where you have 
# to verify that the file exists, the file is writable, or you need to
# know if a folder fulfills the same requirements. These commands below
# can do that
#
# -e     returns true if the file exists
# -d     true if it's a directory
# -f     true if the file exists and is a regular file
# -r     true if the file is readable
# -w     true if the file is writable
# -x     true if the file is an executable
# -s     true if the file exists and is not empty
#
# $ [ -e LICENSE ] && echo 'exists'
# 
# Find me files that can make the statement true so then echo works.
# Don't edit the echo messages

touch 22_file

[ ] && echo "Exists"
[ ] && echo "Directory exists"
[ ] || echo "empty" # have 22_file be here somehow
[ ] || echo "Not an executable"

rm 22_file
