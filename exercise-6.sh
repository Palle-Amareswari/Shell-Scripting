Exercise-6

Write a shell script that prompts the user for a name of a file or directory and reports if it is a
regular file, a directory, or other type of file.
Also perform an ls command against the file or directory with the long listing option.




Sol:

#!/bin/bash

read -p "Enter the name of a file or directory: " path

if [ -e "$path" ]; then
    if [ -f "$path" ]; then
        echo "$path is a regular file."
    elif [ -d "$path" ]; then
        echo "$path is a directory."
    elif [ -b "$path" ]; then
        echo "$path is a blocked file."
    elif [ -c "$path" ]; then
        echo "$path is a character file."
    else
        echo "$path is of another type."
    fi

    ls -l "$path"
else
    echo "$path does not exist."
fi


To run this file:
# > chmod +x exercise_6.sh
# > sh exercise_6.sh
