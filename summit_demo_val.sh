#!/bin/bash

#############################################
#     Script Name:  summit_demo_arg.sh      #                                       
#     Author:  Kellyn Gorman  		    #                                                      
#     Usage:  For Linux Scripting Demo	    #                                           
#     Notes:  Passing values to step 2      #                                       
#############################################

export arco=$1 
export file_name=${dir_name}/${arco}_summit.lst
export log_name=${dir_name}/${arco}_summit.log

#Directory exists, no need to create
#mkdir ./${dir_name}

# Create empty file
touch ${file_name}
touch $log_name

# Verify that directory and file exist
pwd ./$dir_name > $file_name
ls -ltr ${file_name} >> $log_name
ls -ltr ${log_name} >> $log_name
