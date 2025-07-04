#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup(){
	[ -f "10_piping" ] && rm 09_piping
	[ -f "file" ] && rm file
}
trap cleanup EXIT

if [ $(grep "cat LICENSE | wc -w" exercises/10_piping.sh | wc -l) -eq 0 ]; then
	printf "${RED}Failed${RESET}\n"
	exit 1
fi

if [ $(grep "ls -A \"\$HOME\" | wc -l" exercises/10_piping.sh | wc -l) -eq 1 ]; then
	printf "${GREEN}Passed${RESET}\n"
else
	printf "${RED}Failed${RESET}\n"
	exit 1
fi
