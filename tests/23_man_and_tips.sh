#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

check() {
	read amount_cat
	read amount_ls

	[ "$amount_cat" -eq 73 ] || failed
	[ "$amount_ls" -eq 867 ] || failed
}

sh exercises/23_man_and_tips.sh | check

printf "${GREEN}Passed${RESET}\n"
