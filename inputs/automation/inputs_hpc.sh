#!/bin/zsh

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

    #path="/home/wangb/dementpy"
    #path="lustre"/"or-scratch"/"cades-ccsi"/"wangb/dementpy

    #base site
    scp ../$localfolder/$file wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$folder
    #other sites
    scp ../desert/$file    wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$folder/desert
    scp ../scrubland/$file wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$folder/scrubland
    scp ../grassland/$file wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$folder/grassland
    scp ../pineoak/$file   wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$folder/pineoak
    scp ../subalpine/$file wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$folder/subalpine

done