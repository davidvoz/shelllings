#!/bin/sh

# We used this as an example for data direction and up until this point
# we had to run separate commands.
#
# $ head -n 50 LICENSE > 09_file
# $ wc -w 09_file
#
# But now we can combine this using pipes. The '|' symbol is used to 
# basically accomplish what was shown before
#
# $ head -n 50 LICENSE | wc -w
#
# Notice that we did not have to add a file onto wc -l or even enter
# a standard input environment.
#
# As for the actual exercise, change all of these commands into pipes.
# NOTE the testing of this case is very sensitive, try being concise
# and leave unnecessary whitespace out of your answers. Leave the white
# space needed for human readability.

cat LICENSE > file
wc -w file

ls -A "$HOME" > file
wc -l file

# As a fun exercise, run that command above and see how cluttered your
# home directory is.
