#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup() {
	[ -d 06_folder ] && rm -rf 06_folder
}
trap cleanup EXIT

sh exercises/06_removing.sh

[ "$(wc -l < exercises/06_removing.sh)" -eq 44 ] || {
	printf "${RED}Failed${RESET} not 27 lines\n"
	exit 1
}

[ -d "06_folder" ] || {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

if [ "$(ls -A 06_folder | wc -l)" -eq 0 ]; then
	printf "${GREEN}Passed${RESET}\n"
else
	printf "${RED}Failed${RESET}\n"
	exit 1
fi
