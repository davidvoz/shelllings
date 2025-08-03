#!/bin/sh

# grep is a command that searches for text in files or input.
#
# $ grep "the" LICENSE
#
# It will show you all the times the letters 't', 'h', and 'e' are used
# next to each other. If you want to only find that word we can do this
#
# $ grep -w -i "the" LICENSE     # -w for the word, -i to ignore the
#                                # the case spellings
#
# The common useful options are listed here
#
# -w	matches whole words
# -x	matches whole lines
# -i	ignores case spellings
# -v	invert match findings
# -n	show line numbers
# -c	count matches per line
# -l	prints file names with matches
# -q	quiet, supress the output, used often for true or false findings
# -H	show the filename before a match when matching many files
# -o	prints only the matching part, not whole line
#
# Help me figure out a way where I can find the amount of times the word
# 'the' (in all of its strange uppercases and lowercases) is used in
# the LICENSE file. It seems that I can't get quite an accurate reading.

grep 'the' LICENSE | wc

echo "$word_count" # leave be
