#!/bin/bash

#############################################
#     Script Name:  summit_demo_func.sh	    #                                       
#     Author:  Kellyn Gorman  		    #                                                      
#     Usage:  For Linux Scripting Demo	    #                                           
#     Notes:  Dynamic values with functions #                                       
#############################################

export dir_name=./summitdir
# Set declarations
usage() { echo "Usage: $0  -f <file_name> -l <log_name>" 1>&2; exit 1; }
declare file_name=""
declare log_name="" 


# Initialize parameters specified from command line
while getopts ":f:l:" arg; do
        case "${arg}" in
                f)
                        file_name=${OPTARG}
                        ;;
                l)
                        log_name=${OPTARG}
                        ;;
                esac
done
shift $((OPTIND-1))

if [[ -z "$file_name" ]]; then
        echo "Type in the name of your file:"
        read file_name
        [[ "${file_name:?}" ]]
fi
if [[ -z "$log_name" ]]; then
        echo "Type in the name of your log:"
        read log_name
        [[ "${log_name:?}" ]]
fi

# Create variables from other variables :)
export file=${dir_name}/${file_name}
export log_file=${dir_name}/${log_name}

# First function touch files
function touch_func {
touch ${file}
touch ${log_file}
}

# Second function to Verify that directory and file exist
function write_log_func {
pwd ${home}/${dir_name} > $file
ls -ltr ${file} >> $log_file
ls -ltr ${log_file} >> $log_file
}

function clean_func {
rm -rf $dir_name/*
rmdir $dir_name
}

# Conclusion
# Execute Functions and clean up
touch_func
write_log_func
#clean_func

echo “Script has completed” 

