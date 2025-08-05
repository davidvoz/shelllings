#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/27_regex2.sh billybob@bob1.com || failed
sh exercises/27_regex2.sh David2@test.xyz || failed
sh exercises/27_regex2.sh 1@t.co || failed

sh exercises/27_regex2.sh @gmail.com && failed
sh exercises/27_regex2.sh billybob@bob2.c2 && failed
sh exercises/27_regex2.sh billybob@.c2 && failed
sh exercises/27_regex2.sh billybob@mail.COM && failed

printf "${GREEN}Passed${RESET}\n"
