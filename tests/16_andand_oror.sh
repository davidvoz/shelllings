#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

[ "$(sh exercises/16_andand_oror.sh 1412)" = "correct pin" ] || failed
[ "$(sh exercises/16_andand_oror.sh 9999)" = "incorrect pin" ] || failed
[ $(grep "&&" exercises/16_andand_oror.sh | wc -l) -eq 6 ] || failed

printf "${GREEN}Passed${RESET}\n"
