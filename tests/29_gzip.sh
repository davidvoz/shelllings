#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup() {
	[ -f "LICENSE.gz" ] && rm LICENSE.gz
}
trap cleanup EXIT

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

sh exercises/29_gzip.sh || failed

[ -s LICENSE.gz ] || failed
[ -s LICENSE ] || failed

leis_size=$(stat -c%s LICENSE)
gz_size=$(stat -c%s LICENSE.gz)

[ $leis_size -gt $gz_size ] || failed

printf "${GREEN}Passed${RESET}\n"
