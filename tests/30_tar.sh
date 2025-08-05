#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup() {
	[ -f "shelllings.tar.gz" ] && rm shelllings.tar.gz
}
trap cleanup EXIT

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/30_tar.sh || failed

[ -s shelllings.tar.gz ] || failed

file_size=$(du -s shelllings.tar.gz | awk '{print $1}')

[ $file_size -lt 20 ] || failed
[ $file_size -gt 10 ] || failed

printf "${GREEN}Passed${RESET}\n"
