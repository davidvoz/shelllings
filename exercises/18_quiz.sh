#!/bin/sh

# Quiz 1 Notes program
#
# This program is meant to store notes but has some issues

NOTES_FILE=notes.txt

# a bug always has '-p', when selected, added to notes.txt
if [ "$*" = "-p"]; then
	cat notes.txt
fi


if [ "$#" -ge 1] then
	echo "[$(date)]" >> "$NOTES_FILE" # this line is without fault
	echo "" >> "$NOTES_FILE"
else
	echo "Nothing was added"
fi

# When you are done, change the NOTES_FILE location and consider putting
# this into your .local/bin with this part added (yes, you have to find
# a way to have this inserted into the code above).
#
# $ nvim +startinsert /tmp/note_temp
# $ if [ -s /tmp/note_temp ]; then
# $		echo "[$(date)]" >> "$NOTES_FILE"
# $		cat /tmp/note_temp >> "$NOTES_FILE"
# $		echo "" >> "$NOTES_FILE"
# $		rm /tmp/note_temp
# $ fi
#
# Don't forget to have that directory path exported as a path in your
# shell config. Usually, like this
#
# export PATH="$HOME/.local/bin:$PATH"
