#!/bin/sh

# tar is another GNU compression tool that will be more likely used.
# It's more often used in compression of multiple files and folders.
# Same as before, using the --help option, try to find the problem with
# the command below. Don't worry about deleting the .tar.gz file.

tar -czf exercises/ tests/ shelllings.sh shelllings.tar.gz
