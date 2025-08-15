#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup() {
	[ -f "file.txt" ] && rm -f file.txt
}
trap cleanup EXIT

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/31_trap.sh | grep -Eq "Removing..." || failed

grep 'trap' exercises/31_trap.sh | grep "rm file\.txt" | grep 'Removing...' | grep -q 'EXIT' || failed

[ -f "file.txt" ] && failed

printf "${GREEN}Passed${RESET}\n"
