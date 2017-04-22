awk '{ print $1; print $2; }' $1 | sort | uniq -u | wc -l
