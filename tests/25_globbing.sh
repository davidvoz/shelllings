#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$(sh exercises/25_globbing.sh)" = "$(ls tests/1[0123456]*)" ] || failed

printf "${GREEN}Passed${RESET}\n"
