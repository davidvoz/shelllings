#!/bin/sh

# When you run a shell, you can input arguments into the .sh file to be
# used inside of it.
# 
# $ sh test.sh file_name
#
# And then within test.sh, we can have code like this
#
# $ wc -l $1
# 
# The arguments that can be into a script are read as follows
#
# $0	# the script name
# $1	# the first argument
# $2	# the second argument
# $n	# the nth argument
# $@	# all arguments as separate words
# $*	# all arguments as a single word
# $#	# number of arguments passed
#
# Fix below if the arguments passed were: ugly Jayce smelly tofu

echo "One day, [insult] [name] left a [adjective] [food] in his pocket."
echo "A tiger smelt him and ate him."
echo "The words you used were: $"
echo "The number of words you used were: $"
