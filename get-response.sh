#!/bin/bash
directory_tugas="tugas"
file_tugas="tugas1.txt"
file_tugas_path="$directory_tugas/$file_tugas"
url=$1

if ! [ -f $file_tugas_path ]; then
	mkdir $directory_tugas
	touch $file_tugas_path
fi 

echo -e "\nBody website $url \n $(curl $url)" >> $file_tugas_path


