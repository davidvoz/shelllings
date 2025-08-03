#!/bin/sh

# Take a look at what globbing is in unix
#
# $ cat *           # cats out everything immediate in your folder
# $ ls 1?_*         # the ? matches everything to a single character,
#                   # while the * matches it to anything. Run this
#                   # command in the exercises/ or tests/ folder
# $ ls file[abc]    # matches only the characters in the brackets
#                   # so filea fileb and filec will show
# $ ls file[!AB]    # matches files without A or B, so fileC and fileD
#
# Find a way to get a list of all the files in tests/ that are numbered
# between 10 and 16 with just one line of code

ls tests/[]*
