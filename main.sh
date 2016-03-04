#!/bin/bash

./clean.sh
./extract.sh
./dumpcsv.sh
sleep 1 && sensible-browser http://localhost:2001
./server.sh

