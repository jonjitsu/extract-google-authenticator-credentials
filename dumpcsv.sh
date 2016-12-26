#!/bin/bash
set -e
set -o pipefail

[[ -z $1 ]] \
    && data_dir=./data \
    || data_dir="$1"

echo ".schema accounts" | sqlite3 "${data_dir}"/databases > "${data_dir}"/schema.txt
echo "select * from accounts;" | sqlite3 -separator ';' "${data_dir}"/databases > "${data_dir}"/dump.csv
