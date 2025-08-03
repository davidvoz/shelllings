#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$(sh exercises/24_grep.sh)" -eq 13 ] || failed

printf "${GREEN}Passed${RESET}\n"
