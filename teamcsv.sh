#Team Watson Bash Script
#! usr/bin/bash

rm team_watson.csv
Rscript  scriptparth.R >> 'team_watson.csv'
python3  scripthimanshi.py >> 'team_watson.csv'
python3  scriptsomoshri.py >> 'team_watson.csv'
Rscript  scriptparth.R   >> 'team_watson.csv'
java     scripteao.java >> 'team_watson.csv'
g++      scriptbhoopesh.cpp  && ./a.out >> 'team_watson.csv'
perl scriptmahalakshmi.pl >> 'team_watson.csv'
php  scriptsaran.php >> 'team_watson.csv'
