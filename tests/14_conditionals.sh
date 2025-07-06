#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$(sh exercises/14_conditionals.sh)" != "Password not entered" ] && failed # no password entered
[ "$(sh exercises/14_conditionals.sh password123)" != "Welcome" ] && failed # correct password
[ "$(sh exercises/14_conditionals.sh password)" != "Access not granted" ] && failed # incorrectpassword

printf "${GREEN}Passed${RESET}\n"
