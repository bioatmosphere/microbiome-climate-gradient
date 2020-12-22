#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# move the substrates of grassland to different sites on HPC 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# the folder to which files are transferred
for site in desert scrubland grassland pineoak subalpine
do
    #source sites
    folder="input"_"$site"
    #sites to be transplanted
    scp grassland/initial_substrates.csv bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$folder/desert
    scp grassland/initial_substrates.csv bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$folder/scrubland
    scp grassland/initial_substrates.csv bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$folder/grassland
    scp grassland/initial_substrates.csv bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$folder/pineoak
    scp grassland/initial_substrates.csv bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v4/$folder/subalpine
done