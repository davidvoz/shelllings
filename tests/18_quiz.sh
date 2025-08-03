#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

cleanup() {
	[ -f "notes.txt" ] && rm notes.txt
}
trap cleanup EXIT

sh exercises/18_quiz.sh get oreos for protein shake > /dev/null || failed
sh exercises/18_quiz.sh -p this line should appear > /dev/null || failed
sh exercises/18_quiz.sh -p > /dev/null || failed
sh exercises/18_quiz.sh > /dev/null || failed

[ ! $(grep "get oreos" notes.txt | wc -l) -eq 1 ] && failed
[ ! $(grep "\-p" notes.txt | wc -l) -eq 1 ] && failed

printf "${GREEN}Passed${RESET}\n"
