#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

output="$(sh exercises/01_echo.sh)"

if [ -z "$output" ]; then
	printf "${RED}Failed${RESET}\n"
	exit 1
else 
	printf "${GREEN}Passed${RESET}\n"
fi
