#!/bin/sh

EX_DIR="exercises"
TEST_DIR="tests"

list_prev() {
	echo "Listing all challenges"

	for file in "$TEST_DIR"/*; do
		name=$(basename "$file")

		case "$name" in
			04_navigation.sh|11_userinput.sh|13_copying_and_moving.sh)
				echo "$name: skipped"
				continue
				;;
		esac

		sh "$file" > /dev/null 2>&1 || echo "$name: failed"
		sh "$file" > /dev/null 2>&1 && echo "$name"
	done

	rm -rf blueberry 11_file .youfoundme
}


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
	echo "	sh shelllings.sh INT	run the INTth exercise"
	echo "	sh shelllings.sh list	list the exercises you have completed"
	echo "	sh shelllings.sh test	test the program if runnable"
	exit 0
}

case "$1" in
	test)
		echo "shelllings.sh is working (for now)"
		;;
	list)
		list_prev
		;;
	''|*[!0-9]*)
		usage
		;;
	*)
		run_ex "$1"
		;;
esac
