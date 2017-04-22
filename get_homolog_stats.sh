sim_pre="/extra/wayne0/preserve/pgrad/sims/$1/";
hl_pre="/home/sana/sequence/homologene/1-to-1-homologs-";
zips=$(ls $sim_pre | grep ".xz");
arr=($zips);
num=$(echo $(echo $zips | wc -w)"-1" | bc -l);
echo $num;
match_prefix=/home/pgrad/homolog_match_results/NoHL/$1/
mkdir $match_prefix;
for i in $(seq 0 $num);
do \
   pair=$(echo ${arr[$i]} | sed "s/[.].*//" | sed "s/_/-/");
   echo $pair;
   if [ -e $hl_pre$pair.tsv ]
       then ../scripts/localMeasureNoHL.sh $sim_pre${arr[$i]} $hl_pre$pair.tsv $match_prefix$pair.txt;
   fi
done;
