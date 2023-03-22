#!/bin/bash

find . -type f | while read f
do
	echo "$f"
	filename=$(basename "$f")
	
	filepath=$(readlink -f "$f")

	size=$(wc -c "$f" | awk '{print $1}')

	mod_time=$(stat -c "%y" "$f")

	type=$(file -b "$f")

	mime=$(file -b --mime-type "$f")

	echo "$size"
	echo "$mod_time"
done
