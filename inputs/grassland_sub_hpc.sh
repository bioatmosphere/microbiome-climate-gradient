#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# move the substrates of grassland to different sites on HPC 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# the folder to which files are transferred
folder="input_subalpine"

scp grassland/v1/initial_substrates.csv bwang7@hpc.oit.uci.edu:/mic/bwang7/gradient_v2/$folder/desert

scp grassland/v1/initial_substrates.csv bwang7@hpc.oit.uci.edu:/mic/bwang7/gradient_v2/$folder/scrubland

scp grassland/v1/initial_substrates.csv bwang7@hpc.oit.uci.edu:/mic/bwang7/gradient_v2/$folder/grassland

scp grassland/v1/initial_substrates.csv bwang7@hpc.oit.uci.edu:/mic/bwang7/gradient_v2/$folder/pineoak

scp grassland/v1/initial_substrates.csv bwang7@hpc.oit.uci.edu:/mic/bwang7/gradient_v2/$folder/subalpine