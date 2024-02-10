#!/bin/bash

# This script is designed for creating backups of files in a specified directory
# and moving the backup to another specified destination directory.

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi

# [TASK 1]
# Set targetDirectory to the first command line argument
# Set destinationDirectory to the second command line argument
targetDirectory=$1
destinationDirectory=$2

# [TASK 2]
# Display the values of targetDirectory and destinationDirectory
echo "Target Directory: $targetDirectory"
echo "Destination Directory: $destinationDirectory"

# [TASK 3]
# Get the current timestamp in seconds
currentTS=`date +%s`

# [TASK 4]
# Generate a backup file name based on the current timestamp
backupFileName="backup-$currentTS.tar.gz"

# We're going to:
  # 1: Go into the target directory
  # 2: Create the backup file
  # 3: Move the backup file to the destination directory

# To make things easier, we will define some useful variables...

# [TASK 5]
# Get the absolute path of the current directory
origAbsPath=`pwd`

# [TASK 6]
# Change to the destination directory
cd "$destinationDirectory"  # <-
destDirAbsPath=`pwd`

# [TASK 7]
# Change back to the original directory
cd "$origAbsPath" # <-
# Change to the target directory
cd "$targetDirectory" # <-

# [TASK 8]
# Calculate the timestamp for the same time on the previous day
yesterdayTS=$(($currentTS - 86400))

# Initialize an array to store files for backup
declare -a toBackup

# Iterate over files in the target directory
for file in $(ls) # [TASK 9]
do
  # [TASK 10]
  # Check if the modification timestamp of the file is later than the timestamp for the same time on the previous day
  if ((`date -r $file +%s` > $yesterdayTS))
  then
    # [TASK 11]
    # Add the file to the array for backup
    toBackup+=($file)
  fi
done

# [TASK 12]
# Compress and archive the files listed in toBackup
tar -czvf $backupFileName ${toBackup[@]}

# [TASK 13]
# Move the backup file to the destination directory
mv $backupFileName $destDirAbsPath/

# Congratulations! You completed the final project for this course!
