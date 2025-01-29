Exercise - 4 :
-------------
Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display
"Shadow passwords are enabled." Next, check to see if you can write to the file. If you can,
display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have
permissions to edit /etc/shadow."


sol:

#! /bin/bash

path="/etc/shadow"

if [ -e "$path" ]; then
      echo "Shadow passwords are enabled."

      if [ -w "$path" ]; then
            echo "You have permissions to edit /etc/shadow."

      else
             echo "You do NOT have permissions to edit /etc/shadow."

      fi
else
      echo "The file /etc/shadow doesn't exists"

#fi 

               or


#! /bin/bash

path="/etc/shadow1"

if [ -e "$path" ]; then
       echo "Shadow passwords are enabled."

      if [ -w "$path" ]; then
             echo "You have permissions to edit /etc/shadow."

      else
             echo "You do NOT have permissions to edit /etc/shadow."

      fi
else
        echo "The file /etc/shadow doesn't exists"

fi


# To run this file:

# > chmod +x exercise-4.sk
# > sh exercise-4.sh
