#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	[ -f "11_file" ] && rm 11_file
	[ -f "11_user_input" ] && rm 11_user_input
	printf "${RED}Failed${RESET}\n"
	exit 1
}
trap failed EXIT

sh exercises/13_copying_and_moving.sh

[ -f "11_file" ] && failed

[ -s "11_user_input" ] && printf "${GREEN}Passed${RESET}\n"
