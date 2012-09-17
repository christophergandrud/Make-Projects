##########
# Shell script to create lectures or seminars
# Christopher Gandrud
# Updated 17 September 2012
# Helpful information found in "The Linux Command Line: A Complete Introduction" (Shotts 2012)
##########

#!/bin/bash

read -p "Do you want to make a Lecture or Seminar? -> " l
read -p "Please enter the lecture number you want to compile -> " i

# Make a new directory in the Lecture Folder
mkdir /Lectures/$l$i
cd /Lectures/$l$i

# Copy in style files
cp -i /Lectures/CommonFiles/beamerouterthemeStats.sty beamerouterthemeStats.sty
cp -i /Lectures/CommonFiles/beamerthemeStats.sty beamerthemeStats.sty 
    
# Create new beamer slide
cp -i /Lectures/CommonFiles/Header.txt  $l$i.Rnw
    
