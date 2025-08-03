#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

[ -f ".youfoundme" ] || touch .youfoundme

cleanup() {
	[ -e .youfoundme ] && rm -f .youfoundme
}
trap cleanup EXIT

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/03_listing.sh || failed

[ -f ".youfoundme" ] && failed

printf "${GREEN}Passed${RESET}\n"
