#!/bin/bash

if [[ -z $1 ]]; then
    echo ./clean.sh
    echo ./extract.sh
fi
./dumpcsv.sh "$1"
sleep 1 && sensible-browser http://localhost:2001
./server.sh "$1"

