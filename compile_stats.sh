lmeasures=$(cat /home/pgrad/scripts/lmeasures.txt)
for lmeasure in $lmeasures; do \
    /home/pgrad/scripts/get_homolog_stats.sh $lmeasure &
done;
