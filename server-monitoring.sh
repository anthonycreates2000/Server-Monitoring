#!/bin/sh

# This program is made by: Anthony Kevin Oktavius

# A function that displays disk space in our computer.
# by calling df command.
ShowDiskSpace(){
	# $* = Extra arguments to be inserted to df command
	# by using a string.
	df $*
}

# A function that displays memory space (RAM) in our computer
# by calling free command.
ShowMemorySpace(){
	# $* = Extra arguments to be inserted to free command
	# by using a string.
	free $*
}

# This will perform infinite loop.
while true
do
	echo "Displaying Memory Space Properties in Megabytes: "
	MEGABYTES_ARG="--mega" # Argument for showing memory space in Megabytes..
	ShowMemorySpace ${MEGABYTES_ARG}
	echo ""
	sleep 3 # Pause the process for 3 seconds.

	echo "Displaying Disk Space Properties in Gigabytes: "
	GIGABYTES_ARG="-BG" # Show memory space in Gigabytes.
	ShowDiskSpace ${GIGABYTES_ARG}
	echo ""
	sleep 3 # Pause the process for 3 seconds.

	echo "Displaying Disk Space Properties (Only Filesystem and Disk Usage Percentage will be shown):"
	FILESYSTEM_SOURCE="source" # Argument for showing filesystem source.
	DISK_USAGE_PERCENTAGE="pcent" # Argument for showing disk usage in Percentage.
	TMPFS="tmpfs" # Argument for excluding tmpfs filesystem from showing.
	DISK_SPACE_ARGUMENT="--output=${FILESYSTEM_SOURCE},${DISK_USAGE_PERCENTAGE} --exclude-type=${TMPFS}"
	ShowDiskSpace ${DISK_SPACE_ARGUMENT}
	echo ""
	sleep 1m # Pause the process for 1 minute.

done
