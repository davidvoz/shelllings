#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

$(sh exercises/17_exit.sh 9999) && failed
$(sh exercises/17_exit.sh 1412) || failed

printf "${GREEN}Passed${RESET}\n"
