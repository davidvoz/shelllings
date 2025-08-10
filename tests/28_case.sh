#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

printf "scissors\n" | sh exercises/28_case.sh | grep -Eq "tie|lost|won" || failed
printf "scissor\n" | sh exercises/28_case.sh | grep -Eq "tie|lost|won" && failed

printf "${GREEN}Passed${RESET}\n"
