#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$( printf "123\n456\n2987133075769857928\n" | sh exercises/20_whileloop.sh | grep "Nope" | wc -l)" -eq 2 ] || failed
[ "$( printf "123\n456\n2987133075769857928\n" | sh exercises/20_whileloop.sh | grep "cheater" | wc -l)" -eq 1 ] || failed

printf "${GREEN}Passed${RESET}\n"
