#!/bin/bash
url=$1

if [ -z "$url" ]; then
	echo "arguments not found"
	exit 1
fi

directory_tugas="tugas"
file_tugas="tugas1.txt"
file_tugas_path="$directory_tugas/$file_tugas"

! [ -d $directory_tugas ] && mkdir $directory_tugas

! [ -f $file_tugas_path ] && touch $file_tugas_path 

echo -e "\nBody website $url \n $(curl $url)" >> $file_tugas_path

echo "Response Body Collected"

exit 0

