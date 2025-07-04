#!/bin/sh

EX_DIR="exercises"
TEST_DIR="tests"

run_ex() {
	num="$1"
	ex_file=$(ls "$EX_DIR"/*.sh | sort | sed -n "${num}p")
	test_file=$(ls "$TEST_DIR"/*.sh | sort | sed -n "${num}p")

	if [ ! -f "$ex_file" ]; then
		echo "ERROR exercise file not found"
		exit 1
	fi

	if [ ! -f "$test_file" ]; then
		echo "ERROR test file is not found"
		exit 1
	fi

	echo "Running exercise: $(basename "$ex_file")"
	echo "Testing with: tests/$(basename "$test_file")"
	echo ""

	sh "$test_file"
}

usage() {
	echo "Usage"
	echo "	sh shelllings INT	run the INTth exercise"
	echo "	sh shelllings test	test the program if runnable"
	exit 0
}

if expr "$1" : '[0-9][0-9]*' > /dev/null; then
	run_ex "$1"
elif [ "$1" = "test" ]; then
	echo "shelllings.sh is working (for now)"
else 
	usage
fi
