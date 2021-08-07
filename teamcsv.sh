#!/usr/bin/env bash

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
