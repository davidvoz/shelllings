#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

output=$(sh exercises/02_variables.sh)

if [ "$output" = "Hello Bob" ]; then
	echo "${GREEN}Passed${RESET}"
else 
	echo "${RED}Failed${RESET}"
	exit 1
fi
