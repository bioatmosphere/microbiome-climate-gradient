#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Move data from HPC to local 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#--Sub: substrates; Mic: community; Drt: drought tolerance; Enz: enzyme trait
file="Sub"

#loop over origin site
for origin in desert scrubland grassland pineoak subalpine
do
    remotefolder="output"_"$origin"
    localfolder="$origin"
    #loop over sites in each folder
    for site in desert scrubland grassland pineoak subalpine
    do
        scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$remotefolder/data/"$file"_"$origin"_"$site"."csv" gradient_v4/$localfolder/v1/
    done
done