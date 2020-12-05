#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# move inputs of each site to HPC
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# the folder to which files are transferred
folder="input_subalpine"

scp desert/* bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v3/$folder/desert

scp scrubland/* bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v3/$folder/scrubland

scp grassland/* bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v3/$folder/grassland

scp pine_oak/* bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v3/$folder/pineoak

scp subalpine/* bwang7@hpc.oit.uci.edu:/dfs7/dfs3/mic/bwang7/gradient_v3/$folder/subalpine