#!/bin/sh
BLUE="\033[34m"
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

pause() {
	printf "%s" "$1"
	read user_input
	echo ""
}

pause "Welcome to Shelllings [press ENTER]"

echo "This program is meant to help you understand most posix shells,"
echo "like bash or zsh. You already ran the command 'sh run_shell.sh'"
echo "but the command 'sh' doesn't really exist on most systems."
echo "Run 'ls -l /bin/sh' to see if there is a link to another program."
pause "Let's test it out [press ENTER for ls -l /bin/sh]"

echo "${BLUE}$(ls -l /bin/sh)${RESET}"

USER_SHELL=$(ls -l /bin/sh | awk '{print $NF}')

echo ""
if [ "$USER_SHELL" = "sh" ]; then 
	echo "Looks like you are actually using sh, not everyone has it"
	printf "like this. Many shells are changed. "
else
	echo "From the command above, we can see that you are actually"
	printf "running ${BLUE}$USER_SHELL${RESET} under the hood. "
fi

echo "Bash is switched to a "
echo "POSIX-compatible mode, dash also only implements POSIX features."
echo "There are many different shells but we will be sticking with"
echo "POSIX compliant programs and commands. Meaning just about"
echo "every shell you use will be able to understand and run these"
echo "commands. This will not always be the case, however."
pause "[press ENTER]"

echo "To use the program shelllings, let's run the command"
echo "'sh shelllings.sh test' to see if it's able to be run"
pause "[sh shelllings.sh test]"

if sh shelllings.sh test; then
	echo "${GREEN}Passed${RESET}"
else
	echo "${RED}ERROR failed${RESET}"
	exit 1
fi

echo ""
echo "No error message meant that it has not failed. Lets continue on"
pause "and see what exercises there are right now [ls exercises]"

all_ex=$(ls exercises)
echo "${BLUE}$all_ex${RESET}"

echo ""
pause "[press ENTER]"

amount=$(ls exercises | wc -l)

echo "Looks like there are $amount exercises. You should know that"
echo "you can skip through the ones you already know or come back to"
echo "ones you already did. You can run 'sh shelllings.sh n' where n"
echo "is the numbered exercise. You don't need to type the 0's in"
echo "front. Let's get started with the first exercise"
pause "[sh shelllings.sh 1]"

sh shelllings.sh 1 || {
	echo "Looks like it failed. Go on over to the exercises/ folder and"
	printf "fix it then run ${GREEN}sh shelllings 1${RESET} again.\n"
}
