#!/bin/bash

MAX_DEPTH=2
MAX_DIR=6
MAX_FIL=6
NAME="TEST"
RND=0
PATH=`pwd`

gen_random_string() {
	NAME=`echo $RANDOM | md5sum | head -c 20; echo;`
}

gen_random_number() {
	RND=`echo $((0 + $RANDOM % 2))`
}


for i in $(seq 0 $MAX_DIR)
do
	#gen_random_string()
	#gen_random_number()
	NAME_FILE="$NAME$i"
	FINAL_PATH="$PATH/"
	DIR_PATH="$FINAL_PATH$NAME_FILE"
	/bin/mkdir $DIR_PATH
done
