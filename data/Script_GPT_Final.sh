#!/bin/bash


# 1- Define path variables 

Path_S2=./data/
Path_output=./output/ 

# 2- Define name variables

oldEnd=.SAFE
preprocPol=_resam_reproj_subset 

# 3- Extract date & run GPT

for i in $(ls -d -1 $Path_S2$S2A*.SAFE) 
do
m=${i##*/}
n=${m%.*}
    date
    /Applications/snap/bin/gpt ./data/S2_Graph_Final.xml -Pinput=$i -Poutput="$Path_output$n$preprocPol"
    date
done
