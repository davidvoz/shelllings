#!/bin/sh

# wc, word count, is a program that measures and counts bytes, 
# characters, and lines
#
# $ wc -l file      # counts the amount of lines in a file
# $ wc -w file      # counts the amount of words in a file
# $ wc -m file      # characters
# $ wc -c file      # bytes
# $ wc file         # gives out the lines, words, and bytes of a file
#
file="LICENSE"
word_count=$(wc -w $file)
line_count= # fix this
byte_count= # fix this

echo "$line_count"
echo "$word_count"
echo "$byte_count"

# One more thing you should get used to is standard input. Run the wc 
# command without an argument and it will take you to a new line. Type
# whatever you want and end it with a ctrl d. You can run wc -w into
# this environment as well to see the length of your sentence.
