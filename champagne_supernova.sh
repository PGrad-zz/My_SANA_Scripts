#!/bin/bash
for i in `find . -path *.gw`; do awk '{ if(NR==5) { count = $0; } } NR>=5&&NR<=5+count' $i | sed 's/[|]{\([^}]*\)}[|]/\1/' > $i"_mod"; echo $i; done
