#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$(sh exercises/19_functions.sh -de | grep "Minimum reseeding in seconds:" | wc -l)" -eq 1 ] || failed
[ "$(sh exercises/19_functions.sh -de | grep "displays the entropy" | wc -l)" -eq 1 ] && failed
[ "$(sh exercises/19_functions.sh | grep "displays the entropy" | wc -l)" -eq 1 ] || failed


printf "${GREEN}Passed${RESET}\n"

