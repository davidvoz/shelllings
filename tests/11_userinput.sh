#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup(){
	[ -f "11_file" ] && rm 11_file
}
trap cleanup EXIT

sh exercises/11_userinput.sh

if [ -s 11_file ]; then
	printf "${GREEN}Passed${RESET}\n"
	exit 0
else
	printf "${RED}Failed${RESET}\n"
	exit 1
fi
