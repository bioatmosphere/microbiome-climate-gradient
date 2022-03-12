#!/bin/zsh

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# move inputs for each of the 5 sites to HPC
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#file to be transferred
file="runtime"."txt"

for site in desert scrubland grassland pineoak subalpine
do

    #local folder
    localfolder="$site"
    # remote folder
    folder="input"_"$localfolder"
    folder2015="$localfolder"_"2015"

    #path="/home/wangb/dementpy"
    #path="/lustre/or-scratch/cades-ccsi/wangb/mic_gradient_dis"

    ##base site
    scp ../$localfolder/$file wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder
    #scp ../$localfolder/$file wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder/$folder2015
    ##other sites
    scp ../desert/$file    wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder/desert
    scp ../scrubland/$file wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder/scrubland
    scp ../grassland/$file wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder/grassland
    scp ../pineoak/$file   wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder/pineoak
    scp ../subalpine/$file wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$folder/subalpine

done
