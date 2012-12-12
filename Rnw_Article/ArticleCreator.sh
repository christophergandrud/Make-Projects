##########
# Shell script to create lectures or seminars
# Christopher Gandrud
# Updated 12 December 2012
# Helpful information found in "The Linux Command Line: A Complete Introduction" (Shotts 2012)
##########

#!/bin/bash

# Prompt user to define Lecture/Seminar and Number
read -p "Article Title -> " t
read -p "Author Name -> " n
read -p "New bibliography [y/n] -> " b
read -p "File path of bibliography to copy ->" f

# Make a new directory in the Lecture Folder
mkdir //$l$i
cd /Lectures/$l$i

# Copy in style files
cp -i /Lectures/CommonFiles/beamerouterthemeStats.sty beamerouterthemeStats.sty
cp -i /Lectures/CommonFiles/beamerthemeStats.sty beamerthemeStats.sty 
    
# Create new beamer slide
cp -i /Lectures/CommonFiles/Header.txt  $l$i.Rnw
    
