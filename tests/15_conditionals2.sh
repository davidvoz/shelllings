#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$(sh exercises/15_conditionals2.sh 10)" = "even" ] || failed
[ "$(sh exercises/15_conditionals2.sh -1)" = "odd" ] || failed
[ "$(sh exercises/15_conditionals2.sh -9)" = "odd" ] || failed
[ "$(sh exercises/15_conditionals2.sh 1000000)" = "even" ] || failed

printf "${GREEN}Passed${RESET}\n"
