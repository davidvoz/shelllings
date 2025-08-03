#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup(){
	[ -f "11_file" ] && rm 11_file
}
trap cleanup EXIT

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/11_userinput.sh

[ -s 11_file ] || failed

printf "${GREEN}Passed${RESET}\n"
