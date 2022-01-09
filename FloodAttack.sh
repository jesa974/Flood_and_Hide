#!/bin/bash

MAX_DEPTH=2
MAX_DIR=6
MAX_FIL=6
NAME="TEST"
RND=0
PATH=`pwd`
arrMyFile=("/home/oem/Documents/RedTeam/myFile.txt" "0")
declare -a arr

gen_random_string() {
	NAME=`echo $RANDOM | /usr/bin/md5sum | /usr/bin/head -c 20; echo;`
}

gen_random_number() {
	RND=`echo $(($1 + $RANDOM % $2))`
}

for ((i=0;i<=$MAX_DIR;i+=1))
do
	gen_random_string
	arr+=( "$PATH/$NAME" )
	echo ${arr[$i]}
	FINAL_PATH="$PATH/"
	DIR_PATH="$FINAL_PATH$NAME"
	/bin/mkdir $DIR_PATH
done

/usr/bin/mv ${arrMyFile[0]} ${arr[0]}
arrMyFile[0]="${arr[0]}/myFile.txt"

TAILLE=`echo ${#arr[@]}`

while true
do
	gen_random_number 0 $TAILLE
	while (($RND == ${arrMyFile[1]}))
	do
		gen_random_number 0 $TAILLE
	done
	
	/usr/bin/mv ${arrMyFile[0]} ${arr[$RND]} > /dev/null 2>&1
	arrMyFile[0]="${arr[$RND]}/myFile.txt"
	arrMyFile[1]=$RND

	/usr/bin/sleep 10
done
