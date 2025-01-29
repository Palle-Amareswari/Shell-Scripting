Exercise - 7:
Modify the previous script so that it accepts the file or directory name as an argument instead of
prompting the user to enter it.


Sol:

#!/bin/bash
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file-or-directory-name>"
    exit 1
fi

path="$1"

if [ -e "$path" ]; then
    if [ -f "$path" ]; then
        echo "$path is a regular file."
    elif [ -d "$path" ]; then
        echo "$path is a directory."
    elif [ -b "$path" ]; then
        echo "$path is a block device file."
    elif [ -c "$path" ]; then
        echo "$path is a character device file."
    else
        echo "$path is of another type."
    fi

    ls -l "$path"     # To give long lasting details
else
    echo "$path does not exist."
fi


# To run this file :

# > chmod +x exercise-7.sh
# > sh exercise-7.sh </etc/shadow>     # Give any file or directory name like /etc, /usr
