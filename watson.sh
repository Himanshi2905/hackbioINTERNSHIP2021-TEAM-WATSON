#!/usr/bin/env bash
 
SCV=team_watson.csv

for file in $(ls);
do
	if [[ $file == *.py ]]; 
	  then python3 $file >> $SCV
	elif [[ $file == *.js ]];
	  then node $file >> $SCV        
	elif [[ $file == *.cpp]];
	  then g++ $file >> $SCV       
	elif [[ $file == *.r ]];
	  then Rscript $file >> $SCV  
        elif [[ $file == *.php ]];
	  then phpscript $file >> $SCV
         elif [[ $file == *.java ]];
	  then javascript $file >> $SCV
         elif [[ $file == *.pl ]];
	  then perlscript $file >> $SCV
	fi
done 