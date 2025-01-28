Exercise-3:
Store the output of the command "hostname" in a variable. Display "This script is running on
_______." where "_______" is the output of the "hostname" command.
Hint:
It's a best practice to use the ${VARIABLE} syntax if there is text or characters that directly
precede or follow the variable.


Sol:

#! /bin/bash
y=$(hostname)
echo "This script is running on $y." where "$y" is the output of the "hostname" command.

                or
# But hardcoding is not the best practice
y=<ip-address>
echo "This script is running on $y." where "$y" is the output of the "hostname" command.


#To run this file:
# > chmod +x exercise_3.sh
# > sh exercise_3.sh
