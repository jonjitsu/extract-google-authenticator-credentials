#!/bin/bash

[[ -z $1 ]] \
    && data_dir=./data \
    || data_dir="$1"

while true ;
do

	./genhtml.sh "${data_dir}"/dump.csv | nc -l -p 2001

done
