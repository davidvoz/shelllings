#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

[ -f ".youfoundme" ] || touch .youfoundme

sh exercises/03_listing.sh || {
	echo "${RED}Failed${RESET}"
	exit 1
}

if [ -f ".youfoundme" ]; then
	echo "${RED}Failed${RESET}"
	exit 1
else 
	echo "${GREEN}Passed${RESET}"
fi
