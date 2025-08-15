#!/bin/sh

set -eu
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

cleanup() {
	[ -d "blueberry" ] && rm -rf blueberry
}
trap cleanup EXIT

failed() {
	printf "${RED}Failed${RESET}\n"
	exit 1
}

mkdir -p blueberry/strawberry/grape/lemon
mkdir -p blueberry/strawberry/cherry/

touch blueberry/strawberry/grape/lemon/.you_found_me.txt
echo "The password is grannyApples" > blueberry/strawberry/grape/lemon/.you_found_me.txt

echo "Find the grape folder, the file with the password might"
echo "be hard to find, but it is there."

if [ "$(sh exercises/04_navigation.sh)" = "grannyApples" ]; then
	printf "${GREEN}Passed${RESET}\n"
else 
	failed
fi
