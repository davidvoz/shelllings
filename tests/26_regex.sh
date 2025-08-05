#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/26_regex.sh 1 > /dev/null 2>&1 || failed
sh exercises/26_regex.sh 09 > /dev/null 2>&1 || failed
sh exercises/26_regex.sh 10 > /dev/null 2>&1 || failed
sh exercises/26_regex.sh 99999 > /dev/null 2>&1 && failed
sh exercises/26_regex.sh loop > /dev/null 2>&1 || failed
sh exercises/26_regex.sh quiz > /dev/null 2>&1 || failed
sh exercises/26_regex.sh quiz.sh > /dev/null 2>&1 && failed

printf "${GREEN}Passed${RESET}\n"
