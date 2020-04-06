#!/bin/bash

function rename_bysize()
{
    SOURCE_DIR=$1
    DEST_DIR='/home/r4770/Videos/videos2/' 
    
    i=0
    rm -rf $DEST_DIR
    mkdir $DEST_DIR
    

    for file in ${SOURCE_DIR}*
    do
        echo $file
        newfile="${file// /_}"
        echo $newfile
        mv "$file" "$newfile"

    done



    array=($(ls -S "${SOURCE_DIR}"*))   
for file in "${array[@]}"
do
	#echo "the file is named: ${file}"
     i=$((i+1))
        newFile="${DEST_DIR}vid$i.mp4"
        echo   "$file copying to ${newFile}"
       cp -f "$file" "${newFile}"

    done   

}

rename_bysize '/home/r4770/Videos/videos/'