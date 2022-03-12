#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Move data from HPC to local 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#!/bin/zsh

#local directory
localdirectory="gradient"_"v23"
mkdir $localdirectory

#--Sub: substrates; Mic: community; Drt: drought tolerance; Enz: enzyme trait
#--Enzyme: allocation to enzyme; Osmolyte: allocation to osmolyte; Yield: growth yield
# loop over files
#for file in Sub Mic Drt Enz Enzyme Osmolyte Yield
#do
    #loop over origin site
    for origin in desert scrubland grassland pineoak subalpine
    do
        remotefolder="output"_"$origin"
        localfolder="$origin"

        zipfile="$origin"."zip"
        scp -r wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$remotefolder/$zipfile $localdirectory/

        #unzip -d $localdirectory/$localfolder $zipfile
        #loop over sites in each folder
        #for site in desert scrubland grassland pineoak subalpine
        #do
            #scp -r wangb@or-slurm-login.ornl.gov:/home/wangb/dementpy/$remotefolder/data/"$file"_"$origin"_"$site"."csv" gradient_v17_01\*//v17_01_ensemble/$localfolder/
            #scp -r wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient/$remotefolder/data/"$file"_"$origin"_"$site"."csv" $localdirectory/$localfolder/
            #scp -r wangb@or-slurm-login.ornl.gov:/lustre/or-scratch/cades-ccsi/wangb/mic_gradient_dis/$remotefolder/data/"$file"_"$origin"_"$site"."csv" gradient_v17_01\*//v17_01_ensemble/dispersal/$localfolder/

        #done
    done
#done