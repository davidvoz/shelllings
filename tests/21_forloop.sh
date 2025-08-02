#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

failed() {
	printf "${RED}Failed${RESET}\n"

	for file in tests/*; do
		sed -i '/^# bloat message$/d' $file
	done

	exit 1
}

sh exercises/21_forloop.sh || failed

for file in tests/*; do
	name=$(basename "$file")

	case "$name" in
		21_forloop.sh)
			continue
			;;
	esac

	[ "$(grep "bloat message" "$file" | wc -l)" -ne 0 ]  && failed

done


printf "${GREEN}Passed${RESET}\n"
