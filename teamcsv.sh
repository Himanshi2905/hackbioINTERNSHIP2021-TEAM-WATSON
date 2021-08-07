#!/usr/bin/env bash

#change directory to local directory
cd desktop/

cd hackbio2021/

#clone the git repo
git clone https://github.com/Himanshi2905/hackbioINTERNSHIP2021-TEAM-WATSON.git

#change directory to current working directory
cd hackbiointernship 2021

#print working directory
pwd

#list all the files in directory
ls

#give previlige to execute the all the scripts in this folder
#scripthimanshi.py
chmod +x script*

#loop through all the scripts in this folder and generate a csv file
ls script*

#number of files* 
ls script* | wc -l

for i in $(ls script*)
do
./$i | awk -F ',' 'print{$name.$email$slack,$biostack,$twitter,$hamming dist)' >>watson.csv
done