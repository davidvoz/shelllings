#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

output=$(sh exercises/07_wordcount.sh)
answer=$(wc -l LICENSE; wc -w LICENSE; wc -c LICENSE)

[ "$output" = "$answer" ] || failed

printf "${GREEN}Passed${RESET}\n"
