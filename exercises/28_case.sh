#!/bin/sh

# Instead of using if, elif, elif, elif, else, there's a more concise
# (and often faster) method you can use; case.
#
# $ echo "Enter a letter: "
# $ read user_input
# $
# $ case "$user_input" in
# $ 	[a-z])
# $ 		echo "Entered: lowercase"
# $ 		;;
# $ 	[A-Z])
# $ 		echo "Entered: uppercase"
# $ 		;;
# $ 	[0-9])
# $ 		echo "I said letter, not number"
# $ 		;;
# $ 	*) # for everything else
# $ 		echo "What?"
# $ 		;;
# $ esac
#
# The snippet above should be self explanatory. Now, for other cases, it
# can look like this
#
# $ case "$item" in
# $ 	apple|banana|orange) # apple or banana or orange
# $ 		echo "Food item"
# $ 		;;
# $ 	book)
# $ 		echo "leisure item"
# $ 		;;
# $ 	*)
# $ 		echo "unknown"
# $ 		;;
# $ esac
#
# It's better to use 'case' instead of 'if' when you are pattern
# matching, which means you can avoid using grep. It can be better to
# do 'if' instead of 'case' when there's arithmetic, like playing a 
# hotter/colder game by having a user try to find a number.
#
# Below is the unfinished work of a rock-paper-scissors game between
# a player and the computer

choices="rock paper scissors"
computer_choice=$(echo "$choices" | tr ' ' '\n' | shuf -n 1)
printf "Choose rock paper or scissors: "
read player_choice

# The code snippet above needs no changing.
# Have all the echo statements be just those 3 words exactly
case "$player_choice" in
	rock)
		case "$computer_choice" in
			rock) echo "tie" ;; # this is a valid way of condensing code
			paper) echo "lost" ;;
			scissors) echo "won" ;;
	*)
		echo "ERROR invalid option"
		;;
esac
