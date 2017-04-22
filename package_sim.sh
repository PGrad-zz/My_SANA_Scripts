#!/bin/bash
prefix=/extra/wayne0/preserve/pgrad/sims/$4/
mkdir $prefix
./sana -fg1 $1.el -fg2 $2.el -mode similarity -simFormat 1 -$4 0.8 -o $prefix$3;
xz --verbose $prefix$3.sim;
