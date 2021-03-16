#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~ Submit array_job.sh ~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#origin site iterated 
for origin in desert scrubland grassland pineoak subalpine
do

  basesite="$origin"
  input_basesite="input"_"$basesite"
  output_basesite="output"_"$basesite"

  # default
  default_jobname="dmg"
  default_input="input_basesite"
  default_output="output_basesite"
  default="site"


  sed -i -e "s/$default_input/$input_basesite/" array_job.sh
  sed -i -e "s/$default_output/$output_basesite/" array_job.sh

  #site iterated
  for site in desert scrubland grassland pineoak subalpine
  do

    # change job name
    jobname="$default_jobname"_"${basesite:0:2}"_"${site:0:2}"
    sed -i -e "s/$default_jobname/$jobname/" array_job.sh

    # change site name
    target="$site"
    sed -i -e "s/$default/$target/" array_job.sh

    # submit to HPC
    qsub array_job.sh

    # change the jobname back to the default
    sed -i -e "s/$jobname/$default_jobname/" array_job.sh

    # change the $target back to $default
    if [ $target == $basesite ]
    then
      sed -i -e "s/$target/$default/3" array_job.sh
    else
      sed -i -e "s/$target/$default/1" array_job.sh
    fi

  done

  # change input & output folder back to the default
  sed -i -e "s/$input_basesite/$default_input/" array_job.sh
  sed -i -e "s/$output_basesite/$default_output/" array_job.sh

done