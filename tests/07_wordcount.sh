#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

output=$(sh exercises/07_wordcount.sh)
answer=$(wc -l LICENSE; wc -w LICENSE; wc -c LICENSE)

if [ "$output" = "$answer" ]; then
	printf "${GREEN}Passed${RESET}\n"
else
	printf "${RED}Failed${RESET}\n"
	exit 1
fi
