#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup() {
	[ -f "08_cat" ] && rm 08_cat
}
trap cleanup EXIT

output=$(sh exercises/08_cat.sh)
answer=$(tail -n 50 LICENSE | wc -w)

if [ $(wc -w < 08_cat) -eq $answer ]; then
	printf "${GREEN}Passed${RESET}\n"
	exit 0
else
	printf "${RED}Failed${RESET}\n"
	exit 1
fi
