Exercise-5

Write a shell script that displays "man", "bear", "pig", "dog", "cat", and "sheep" to the screen with
each appearing on a separate line. Try to do this in as few lines as possible.
Hint: Loops can be used to perform repetitive tasks.




#!/bin/bash

words=("man" "bear" "pig" "dog" "cat" "sheep")

for i in "${words[@]}"; do
    echo "$i"
done


# To run this file:

# > chmod +x exercise-5.sh
# > sh exercise-5.sh
