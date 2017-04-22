#!/bin/bash
pasha_prefix=/extra/wayne0/preserve/pashak/Biogrid/networks/
last=$(echo $(cat pairs.txt | wc -l)"-1" | bc -l);
pairs=($(awk '{ print $1; }' /home/pgrad/sana/pairs.txt));
for i in $(seq 0 $last); do \
    pair=($(awk -F ";" '{ print $1" "$2 }' <(echo ${pairs[$i]})));
    ../scripts/package_sim.sh $pasha_prefix${pair[0]} $pasha_prefix${pair[1]} ${pair[0]}"_"${pair[1]} $1;
done;
