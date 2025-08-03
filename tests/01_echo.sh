#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

output="$(sh exercises/01_echo.sh)"

[ -z "$output" ] && failed
	
printf "${GREEN}Passed${RESET}\n"
