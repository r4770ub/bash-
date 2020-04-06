#!/bin/bash 

INPUT_DIRECTORY="/home/r4770/Pictures/*.png"

cmd="null"
function combine_images()
{

    cmd='convert +append '
    for file in $INPUT_DIRECTORY
     do
     cmd+="$file "
        echo $file
   
   
    done 
    cmd+="/home/r4770/Pictures/out.png"
    echo "cmd is $cmd"
    $cmd
}

combine_images