#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Move data from HPC to local 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#--Sub: substrates; Mic: community; Drt: drought tolerance; Enz: enzyme trait
file="Enz"

#loop over origin site
for origin in grassland #desert scrubland grassland pineoak subalpine
do
    remotefolder="output"_"$origin"
    localfolder="$origin"
    #loop over sites in each folder
    for site in desert scrubland grassland pineoak subalpine
    do
        scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$remotefolder/"$file"_"$origin"_"$site"."csv" gradient_v4/$localfolder/
    done
done



# for site in desert scrubland grassland pineoak subalpine
# do
#     #desert
#     scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/output_desert/"$file"_"desert"_"$site"."csv" gradient_v4/desert/
#     #scrubland
#     scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/output_scrubland/"$file"_"scrubland"_"$site"."csv" gradient_v4/scrubland/
#     #grassland
#     scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/output_grassland/"$file"_"grassland"_"$site"."csv" gradient_v4/grassland/
#     #pineoak
#     scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/output_pineoak/"$file"_"pineoak"_"$site"."csv" gradient_v4/pineoak/
#     #subalpine
#     scp -r bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/output_subalpine/"$file"_"subalpine"_"$site"."csv" gradient_v4/subalpine/
# done