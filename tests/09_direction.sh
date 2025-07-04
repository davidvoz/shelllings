#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup(){
	[ -f "09_file" ] && rm 09_file
}
trap cleanup EXIT

sh exercises/09_direction.sh
output=$(wc -l < 09_file)
answer=$(cat LICENSE exercises/* | wc -l)

if [ $output -eq $answer ]; then
	printf "${GREEN}Passed${RESET}\n"
	exit 0
else
	printf "${RED}Failed${RESET}\n"
	exit 1
fi
