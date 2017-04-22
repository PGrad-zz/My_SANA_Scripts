lmeasures=$(cat /home/pgrad/scripts/lmeasures.txt)
for lmeasure in $lmeasures; do \
    $1 $lmeasure;
done;
