#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/19_functions.sh -de | grep -q "Minimum reseeding in seconds:" || failed
sh exercises/19_functions.sh -de | grep -q "displays the entropy" && failed
sh exercises/19_functions.sh | grep -q "displays the entropy" || failed

printf "${GREEN}Passed${RESET}\n"
