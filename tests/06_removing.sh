#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

cleanup() {
	[ -d 06_folder ] && rm -rf 06_folder
}
trap cleanup EXIT


sh exercises/06_removing.sh

[ "$(wc -l < exercises/06_removing.sh)" -eq 44 ] || {
	failed
	echo "not 27 lines"
}

[ -d "06_folder" ] || failed

[ "$(ls -A 06_folder | wc -l)" -eq 0 ] || failed

printf "${GREEN}Passed${RESET}\n"
