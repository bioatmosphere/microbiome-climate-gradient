#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# move inputs for each of the 5 sites to HPC
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#file to be transferred
file="parameters"."csv"

for site in desert scrubland grassland pineoak subalpine
do

    #local folder
    localfolder="$site"
    # remote folder
    folder="input"_"$localfolder"

    #base site
    scp ../$localfolder/$file bwang7@hpc3.rcic.uci.edu:/dfs3b/mic/bwang7/gradient_v4/$folder
    #other sites
    scp ../desert/$file    bwang7@hpc3.rcic.uci.edu:/dfs3b/mic/bwang7/gradient_v4/$folder/desert
    scp ../scrubland/$file bwang7@hpc3.rcic.uci.edu:/dfs3b/mic/bwang7/gradient_v4/$folder/scrubland
    scp ../grassland/$file bwang7@hpc3.rcic.uci.edu:/dfs3b/mic/bwang7/gradient_v4/$folder/grassland
    scp ../pineoak/$file   bwang7@hpc3.rcic.uci.edu:/dfs3b/mic/bwang7/gradient_v4/$folder/pineoak
    scp ../subalpine/$file bwang7@hpc3.rcic.uci.edu:/dfs3b/mic/bwang7/gradient_v4/$folder/subalpine

done