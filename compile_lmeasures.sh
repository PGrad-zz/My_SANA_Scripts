lmeasures=$(cat /home/pgrad/scripts/lmeasures.txt)
for lmeasure in $lmeasures; do \
    /home/pgrad/scripts/sim_factory.sh $lmeasure &
done;
