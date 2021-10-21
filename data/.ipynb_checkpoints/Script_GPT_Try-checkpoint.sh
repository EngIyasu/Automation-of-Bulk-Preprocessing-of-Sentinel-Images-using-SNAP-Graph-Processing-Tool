#!/bin/bash


# 1- Define path variables 

Path_S2=/Users/iyasueibed/Documents/Webinar_and_Workshop_Activity/Part_55_Agricultural_Crop/Part_02/Sentinel_Preprocessing/data/data/ 
Path_output=/Users/iyasueibed/Documents/Webinar_and_Workshop_Activity/Part_55_Agricultural_Crop/Part_02/Sentinel_Preprocessing/data/output/ 

# 2- Define name variables

oldEnd=.SAFE
preprocPol=_resam_reproj_subset 

# 3- Extract date & run GPT

for i in $(ls -d -1 $Path_S2$S2A*.SAFE) 
do
m=${i##*/}
n=${m%.*}
    date
    /Applications/snap/bin/gpt /Users/iyasueibed/Documents/Webinar_and_Workshop_Activity/Part_55_Agricultural_Crop/Part_02/Sentinel_Preprocessing/data/data/S2_Graph_Final.xml -Pinput=$i -Poutput="$Path_output$n$preprocPol"
    date
done
