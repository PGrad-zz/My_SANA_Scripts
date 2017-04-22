#!/bin/bash
#1 is the sim file, and 2 is the set of homolegene pairs
xzcat $1 | grep -ve "-inf" | grep -ve "nan" | awk '{ print $3 }' | /home/pgrad/scripts/stats.py > $3
