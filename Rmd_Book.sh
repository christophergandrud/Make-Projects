##########
# Shell script to create directories & files for A Book with 14 Chapters
# Christopher Gandrud
# Updated 28 June 2012
# Helpful information found in "The Linux Command Line: A Complete Introduction" (Shotts 2012)
##########

#!/bin/bash

cd ~/Desktop

mkdir Book

## Make chapters

cd ~/Desktop/Book

mkdir Source

cd ~/Desktop/Book/Source

## Create 14 chapters and add main source files and image directories
## Use loops for 14 Chapters
####### Change final sequence number if your book has a different number of chapters #######

for i in `seq 1 14`;
do

    cd ~/Desktop/Book/Source

    CHP_NAME=Chapter$i 
 
    mkdir $CHP_NAME
    
    cd ~/Desktop/Book/Source/$CHP_NAME
    
    mkdir images$i

    ## Template Text

    CHAPTER="Chapter $i"
    CURRENT_TIME=$(date +"%x %r %Z")

cat > chapter$i.Rmd << _EOF_
<!---
 Chapter $CHAPTER For Reproducible Research in R/RStudio
 Author
 Created $CURRENT_TIME
 Updated 
--->

\chapter{$CHAPTER:}

_EOF_

done

echo "Finished"