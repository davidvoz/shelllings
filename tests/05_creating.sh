#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

sh exercises/05_creating.sh

if find . -mindepth 4 -type f -name file | grep -q .; then
    printf "${GREEN}Passed${RESET}\n"
else
    printf "${RED}Failed${RESET}\n"
	exit 1
fi
