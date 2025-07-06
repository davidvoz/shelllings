#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

output=$(sh exercises/12_arguments.sh ugly Jayce big tofu)
first_line=$(sh exercises/12_arguments.sh ugly Jayce big tofu | head -n 1)
correct_first_line="One day, ugly Jayce left a big tofu in his pocket."

[ "$first_line" != "$correct_first_line" ] && failed
[ "$(echo "$output" | grep 4)" != "The number of words you used were: 4" ] && failed
[ "$(echo "$output" | grep "The words")" != "The words you used were: ugly Jayce big tofu" ] && failed

printf "${GREEN}Passed${RESET}\n"
