#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

output=$(sh exercises/22_file_checks.sh)

for keyword in Exists Directory empty Not; do
  echo "$output" | grep -q "$keyword" || failed
done

printf "${GREEN}Passed${RESET}\n"
