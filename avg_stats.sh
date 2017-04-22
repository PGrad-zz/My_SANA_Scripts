#!/bin/bash
Titles=($(echo "MEAN_HL;MEAN_FULL VAR_HL;VAR_FULL Z_HL;Z_FULL"));
Args=($(echo "2 4 6"));
Dirs=($(echo "./ NoHL/"));
results_dir=/home/pgrad/homolog_match_results/Averages_Tables/
cat <(
for i in `seq 0 2`; do
    pair=($(awk -F ";" '{ print $1" "$2}' <(echo ${Titles[$i]})));
    for j in `seq 0 1`; do
        echo ${pair[$j]};
        cat <(
           hr=/home/pgrad/homolog_match_results/${Dirs[$j]}$1/;
           for f in `ls $hr`; do \
               awk -v "arg=${Args[$i]}" '{ print $arg }' $hr$f; 
           done;
        ) | /home/pgrad/scripts/stats.py 
    done;
done;
) > $results_dir$1_averages.txt;
