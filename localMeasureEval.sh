#!/bin/bash
#1 is the sim file, and 2 is the set of homolegene pairs
xzcat $1 | grep -ve "-inf" | grep -ve "nan" | fgrep -f <(sed "s/\s/ /" $2) | awk '{ print $3 }' | /home/pgrad/scripts/stats.py > $3
