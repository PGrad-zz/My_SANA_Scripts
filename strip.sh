#!/bin/bash
awk '{ if(NR==5) { count = $0; } } NR>=5&&NR<=5+count' $1 | sed 's/[|]{\([^}]*\)}[|]/\1/'
