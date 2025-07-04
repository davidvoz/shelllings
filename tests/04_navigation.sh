#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

mkdir -p blueberry/strawberry/grape/lemon
mkdir -p blueberry/strawberry/cherry/

touch blueberry/strawberry/grape/lemon/.you_found_me.txt
echo "The password is grannyApples" > blueberry/strawberry/grape/lemon/.you_found_me.txt

echo "Find the grape folder, the file with the password might"
echo "be hard to find, but it is there. Once you have found what you"
echo "are looking for enter the password here (To exit out of the "
printf "entering password prompt, press control c): "
read user_input

if [ "$user_input" = "grannyApples" ]; then
	echo "${GREEN}Passed${RESET}"
	rm -rf blueberry
else 
	echo "${RED}Failed${RESET}"
	exit 1
fi
