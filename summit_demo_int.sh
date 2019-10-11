#!/bin/bash

#############################################
#     Script Name:  summit_demo_int.sh     	    #                                       
#     Author:  Kellyn Gorman  		    #                                                      
#     Usage:  For Linux Scripting Demo	    #                                           
#     Notes:  Hard coded values to begin    #                                       
#############################################

export dir_name=summitdir1 
export file_name=${dir_name}/summit.lst
export log_name=${dir_name}/summit.log

# Create new directory
mkdir ./${dir_name}

# Create empty file
touch ${file_name}
touch $log_name

# Verify that directory and file exist
pwd ./$dir_name > $file_name
ls -ltr ${file_name} >> $log_name
ls -ltr ${log_name} >> $log_name
