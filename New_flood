#!/bin/bash

MAX_DEPTH=2
MAX_DIR=10
MAX_FIL=6
NAME="TEST"
RND=0
PATH=`pwd`
arrMyFile=("/home/jesa/myFile.txt" "0")
declare -a arr
declare -a arrFake

gen_random_string() {
	NAME=`echo $RANDOM | /usr/bin/md5sum | /usr/bin/head -c 20; echo;`
}

gen_random_number() {
	RND=`echo $(($1 + $RANDOM % $2))`
}

gen_fake_files() {

	for ((i=0;i<=$MAX_FIL;i+=1))
	do
		gen_random_string
		/bin/touch "$PATH/$NAME"
		arrFake+=( "$PATH/$NAME" )
		arrFake+=( "0" )
	done
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

gen_random_string
/bin/mv -v "${arrMyFile[0]}" "${arr[0]}/$NAME"
arrMyFile[0]="${arr[0]}/$NAME"

TAILLE=`echo ${#arr[@]}`

gen_fake_files

for ((i=0;i<=$MAX_FIL;i+=2))
do
	gen_random_string
	echo "${arrFake[$i]} : $i"
	echo "${arrFake[$i]} : ${arr[0]}/$NAME"
	/bin/mv -v "${arrFake[$i]}" "${arr[0]}/$NAME"
	arrFake[$i]="${arr[0]}/$NAME"
done

while true
do
	gen_random_number 0 $TAILLE
	while (($RND == ${arrMyFile[1]}))
	do
		gen_random_number 0 $TAILLE
	done
	
	gen_random_string
	/bin/mv -v "${arrMyFile[0]}" "${arr[$RND]}/$NAME" > /dev/null 2>&1
	arrMyFile[0]="${arr[$RND]}/$NAME"
	arrMyFile[1]=$RND

	for ((i=0;i<=$MAX_FIL;i+=2))
	do
		gen_random_number 0 $TAILLE
		while (($RND == ${arrFake[$i+1]}))
		do
			gen_random_number 0 $TAILLE
		done

		/bin/mv -v "${arrFake[$i]}" "${arr[$RND]}/$NAME" > /dev/null 2>&1
		arrFake[$i]="${arr[$RND]}/$NAME"
		arrFake[$i+1]=$RND
		
	done

	/bin/sleep 2
done
