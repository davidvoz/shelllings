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
	echo "${RED}Failed${RESET} not 27 lines"
	exit 1
}

[ -d "06_folder" ] || {
	echo "${RED}Failed${RESET}"
	exit 1
}

if [ "$(ls -A 06_folder | wc -l)" -eq 0 ]; then
	echo "${GREEN}Passed${RESET}"
else
	echo "${RED}Failed${RESET}"
	exit 1
fi
