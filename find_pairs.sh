net_prefix="/extra/wayne0/preserve/pashak/Biogrid/networks/"
ls_exec=$(ls $net_prefix);
net_array=($ls_exec);
map_size_to_index=$()
last=$(echo $(echo $ls_exec | wc -w)"-1" | bc -l);
node_nums=""
pairs=""
for i in $(seq 0 $last); do \
    nodes=$(/home/pgrad/scripts/count_nodes.sh $net_prefix${net_array[$i]})
    node_nums=$node_nums$nodes"\n";
    map_size_to_index[nodes]=$i
done;
node_nums=($(printf $node_nums | sort -g))
for i in $(seq 0 $last); do \
    after=$(echo $i"+1" | bc -l);
    for j in $(seq $after $last); do \
         pairs=$pairs${net_array[${map_size_to_index[${node_nums[$i]}]}]}";"${net_array[${map_size_to_index[${node_nums[$j]}]}]}"\n";
    done;
done;
printf $pairs;
