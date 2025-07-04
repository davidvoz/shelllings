#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

[ -f ".youfoundme" ] || touch .youfoundme

sh exercises/03_listing.sh || {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

if [ -f ".youfoundme" ]; then
	printf "${RED}Failed${RESET}\n"
	exit 1
else 
	printf "${GREEN}Passed${RESET}\n"
fi
