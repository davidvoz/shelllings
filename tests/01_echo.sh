#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

output="$(sh exercises/01_echo.sh)"

if [ -z "$output" ]; then
	echo "${RED}Failed${RESET}"
	exit 1
else 
	echo "${GREEN}Passed${RESET}"
fi
