#!/bin/bash

##########
# Shell script to create directories & files for Reproducible Research in R/RStudio
# Christopher Gandrud
# Updated 28 June 2012
# Helpful information found in "The Linux Command Line: A Complete Introduction" (Shotts 2012)
##########

cd ~/Desktop

mkdir RRBook

## Make chapters

cd ~/Desktop/RRBook

mkdir Source

cd ~/Desktop/RRBook/Source

## Create 14 chapters and add main source files and image directories
## Use loops for 14 Chapters

for i in `seq 1 14`;
do

    cd ~/Desktop/RRBook/Source

    CHP_NAME=Chapter$i 
 
    mkdir $CHP_NAME
    
    cd ~/Desktop/RRBook/Source/$CHP_NAME
    
    mkdir images$i

    ## Template Text

    CHAPTER="Chapter $i"
    CURRENT_TIME=$(date +"%x %r %Z")

cat > chapter$i.Rmd << _EOF_
###########
# Chapter $CHAPTER For Reproducible Research in R/RStudio
# Christopher Gandrud
# Created $CURRENT_TIME
# Updated 
###########

\chapter{$CHAPTER:}

_EOF_

done

echo "Finished"